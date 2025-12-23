<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Ticket;
use App\Models\Message;
use App\Models\Setting;
use App\Helpers\EmailHelper;
use App\Jobs\EmailSendJob;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TicketController extends Controller
{
    /**
     * GET USER TICKETS
     */
    public function index()
    {
        $tickets = Ticket::where('user_id', Auth::id())
            ->latest('id')
            ->get();

        return response()->json([
            'tickets' => $tickets->map(function ($ticket) {
                return [
                    'id' => $ticket->id,
                    'subject' => $ticket->subject,
                    'status' => $ticket->status,
                    'created_at' => $ticket->created_at->format('Y-m-d H:i:s'),
                    'messages_count' => $ticket->messages->count(),
                ];
            })
        ]);
    }

    /**
     * CREATE TICKET
     */
    public function store(Request $request)
    {
        $request->validate([
            'subject' => 'required|max:255',
            'message' => 'required|max:5000',
            'file' => 'sometimes|file|mimes:zip|max:5000',
        ]);

        $input = $request->all();
        $input['user_id'] = Auth::id();
        $input['status'] = 'Open';

        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $name = time() . str_replace(' ', '', $file->getClientOriginalName());
            $file->move('assets/files/', $name);
            $input['file'] = $name;
        }

        $ticket = Ticket::create($input);

        $message = new Message();
        $message->ticket_id = $ticket->id;
        $message->user_id = Auth::id();
        $message->message = $request->message;
        $message->save();

        // SEND EMAIL NOTIFICATION
        if (Setting::first()->ticket_mail == 1) {
            $mailData = [
                'to' => Setting::first()->contact_email,
                'type' => 'ticket',
                'body' => 'You got a new message from ' . Auth::user()->first_name,
                'subject' => 'Support Ticket',
            ];

            $setting = Setting::first();
            if ($setting->is_queue_enabled == 1) {
                dispatch(new EmailSendJob($mailData));
            } else {
                (new EmailHelper())->sendCustomMail($mailData, "custom");
            }
        }

        return response()->json([
            'message' => 'Ticket created successfully',
            'ticket' => [
                'id' => $ticket->id,
                'subject' => $ticket->subject,
                'status' => $ticket->status,
            ]
        ], 201);
    }

    /**
     * REPLY TO TICKET
     */
    public function reply(Request $request)
    {
        $request->validate([
            'ticket_id' => 'required|exists:tickets,id',
            'message' => 'required|max:5000',
        ]);

        $ticket = Ticket::where('id', $request->ticket_id)
            ->where('user_id', Auth::id())
            ->firstOrFail();

        $message = new Message();
        $message->ticket_id = $request->ticket_id;
        $message->user_id = Auth::id();
        $message->message = $request->message;
        $message->save();

        // SEND EMAIL NOTIFICATION
        if (Setting::first()->ticket_mail == 1) {
            $mailData = [
                'to' => Setting::first()->contact_email,
                'type' => 'ticket',
                'body' => 'You got a new reply from ' . Auth::user()->first_name,
                'subject' => 'Support Ticket Reply',
            ];

            $setting = Setting::first();
            if ($setting->is_queue_enabled == 1) {
                dispatch(new EmailSendJob($mailData));
            } else {
                (new EmailHelper())->sendCustomMail($mailData, "custom");
            }
        }

        return response()->json([
            'message' => 'Reply sent successfully',
            'message_id' => $message->id,
        ]);
    }

    /**
     * DELETE TICKET
     */
    public function delete($id)
    {
        $ticket = Ticket::where('id', $id)
            ->where('user_id', Auth::id())
            ->firstOrFail();

        // Delete messages
        foreach ($ticket->messages as $message) {
            $message->delete();
        }

        // Delete file if exists
        if ($ticket->file) {
            @unlink('assets/files/' . $ticket->file);
        }

        $ticket->delete();

        return response()->json([
            'message' => 'Ticket deleted successfully'
        ]);
    }
}
