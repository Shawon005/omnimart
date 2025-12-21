<?php

namespace App\Http\Controllers\Back;

use App\{
    Models\CurierSetting,
    Http\Controllers\Controller,
    Http\Requests\CurierSettingRequest,
    Repositories\Back\CurierSettingRepository
};
use Illuminate\Support\Facades\Http;

use Illuminate\Http\Request;

class CurierSettingController extends Controller
{
    /**
     * Constructor Method.
     *
     * Setting Authentication
     *
     * @param  \App\Repositories\Back\CurierSettingRepository $repository
     *
     */
    public function __construct(CurierSettingRepository $repository)
    {
        $this->middleware('auth:admin');
        $this->middleware('adminlocalize');
        $this->repository = $repository;
    }

    /**
     * Show the form for updating resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function curier()
    {
        return view('back.settings.curier', $this->repository->curier());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(CurierSettingRequest $request)
    {
        //dd($request->all());
        $this->repository->update($request);
        return redirect()->back()->withSuccess(__('Curier Information Updated Successfully.'));
    }
  


}
