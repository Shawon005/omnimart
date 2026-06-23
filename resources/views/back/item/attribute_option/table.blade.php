@foreach($datas as $data)
    <tr>
        <td>
            {{ $data->position ?? 0 }}
        </td>
        <td>
            {{ $data->name }}
        </td>
        <td>
            {{ $data->attribute }}
        </td>
        <td>
            <div>
                <strong>{{ __('Current') }}:</strong>
                {{ ($data->current_price ?? $data->price) == 0 ? __('Free') : PriceHelper::adminCurrencyPrice($data->current_price ?? $data->price) }}
            </div>
            <div class="text-muted">
                <strong>{{ __('Previous') }}:</strong>
                {{ $data->previous_price && $data->previous_price != 0 ? PriceHelper::adminCurrencyPrice($data->previous_price) : __('Free') }}
            </div>
        </td>
        <td class="{{$data->stock < 10 && $data->stock != 'unlimited' ? 'bg-danger text-white'  :''}} ">
            @if ($data->stock == '0')
            {{__('Out of Stock')}}
            @else
            {{$data->stock}}
            @endif
        </td>
        <td>
            <div class="action-list">
                <a class="btn btn-secondary btn-sm "
                    href="{{ route('back.option.edit',[$item->id, $data->id]) }}">
                    <i class="fas fa-edit"></i> {{ __('Edit') }}
                </a>
                <a class="btn btn-danger btn-sm " data-toggle="modal"
                    data-target="#confirm-delete" href="javascript:;"
                    data-href="{{ route('back.option.destroy',[$item->id, $data->id]) }}">
                    <i class="fas fa-trash-alt"></i>
                </a>
            </div>
        </td>
    </tr>
@endforeach
