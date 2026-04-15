@foreach ($datas as $data)
    <tr>
        <td>
            <img src="{{ $data->photo ? url('/core/public/storage/images/' . $data->photo) : url('/core/public/storage/images/placeholder.png') }}"
                alt="Image Not Found">
        </td>
        <td>
            @if ($data->home_page == 'theme1')
                {!! $data->logo !!}
            @else
                --
            @endif
        </td>

        <td>
            @if ($data->home_page != 'theme4')
                {!! $data->title !!}
            @else
                --
            @endif
        </td>
        <td>
            {{ strtoupper($data->home_page) }}
        </td>

        <td>
            @if ($data->home_page != 'theme4')
                {!! Str::limit($data->details, 250, '...') !!}
            @else
                --
            @endif
        </td>

        <td>
            <div class="action-list">
                <a class="btn btn-secondary btn-sm " href="{{ route('back.slider.edit', $data->id) }}">
                    <i class="fas fa-edit"></i>
                </a>
                <a class="btn {{ $data->status == 1 ? 'btn-success' : 'btn-danger' }} btn-sm status-toggle" 
                   href="javascript:;" 
                   data-id="{{ $data->id }}"
                   data-status="{{ $data->status }}"
                   title="{{ $data->status == 1 ? __('Active') : __('Inactive') }}">
                    <i class="fas {{ $data->status == 1 ? 'fa-check-circle' : 'fa-times-circle' }}"></i>
                </a>
                <a class="btn btn-danger btn-sm " data-toggle="modal" data-target="#confirm-delete" href="javascript:;"
                    data-href="{{ route('back.slider.destroy', $data->id) }}">
                    <i class="fas fa-trash-alt"></i>
                </a>
            </div>
        </td>
    </tr>
@endforeach
