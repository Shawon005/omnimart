@extends('master.back')

@section('content')

<!-- Start of Main Content -->
<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class=" mb-0  pl-3"><b>{{ __('Sliders') }}</b></h3>
                <a class="btn btn-primary  btn-sm" href="{{route('back.slider.create')}}"><i class="fas fa-plus"></i> {{ __('Add') }}</a>
                </div>
        </div>
    </div>


	<!-- DataTales -->
	<div class="card shadow mb-4">
		<div class="card-body">
			@include('alerts.alerts')
			<div class="gd-responsive-table">
				<table class="table table-bordered table-striped" id="admin-table" width="100%" cellspacing="0">

					<thead>
						<tr>
							<th>{{ __('Image') }}</th>
							<th>{{ __('Feature Text') }}</th>
                            <th width="25%">{{ __('Title') }}</th>
                            <th>{{ __('Home Page') }}</th>
							<th width="25%">{{ __('Details') }}</th>
							<th>{{ __('Actions') }}</th>
						</tr>
					</thead>

					<tbody>
                        @include('back.slider.table',compact('datas'))
					</tbody>

				</table>
			</div>
		</div>
	</div>

</div>

</div>
<!-- End of Main Content -->

{{-- DELETE MODAL --}}

  <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">

		<!-- Modal Header -->
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">{{ __('Confirm Delete?') }}</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
		</div>

		<!-- Modal Body -->
        <div class="modal-body">
			{{ __('You are going to delete this slider. All contents related with this slider will be lost.') }} {{ __('Do you want to delete it?') }}
		</div>

		<!-- Modal footer -->
        <div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Cancel') }}</button>
			<form action="" class="d-inline btn-ok" method="POST">

                @csrf

                @method('DELETE')

                <button type="submit" class="btn btn-danger">{{ __('Delete') }}</button>

			</form>
		</div>

      </div>
    </div>
  </div>

{{-- DELETE MODAL ENDS --}}

<script>
document.addEventListener('DOMContentLoaded', function() {
    const statusButtons = document.querySelectorAll('.status-toggle');
    
    statusButtons.forEach(function(button) {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            
            const sliderId = this.getAttribute('data-id');
            const currentStatus = this.getAttribute('data-status');
            const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
            
            fetch('{{ route("back.slider.toggle-status") }}', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': token
                },
                body: JSON.stringify({
                    id: sliderId
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // Toggle status
                    const newStatus = currentStatus == 1 ? 0 : 1;
                    button.setAttribute('data-status', newStatus);
                    
                    // Update button appearance
                    if (newStatus == 1) {
                        button.classList.remove('btn-danger');
                        button.classList.add('btn-success');
                        button.innerHTML = '<i class="fas fa-check-circle"></i>';
                        button.setAttribute('title', '{{ __("Active") }}');
                    } else {
                        button.classList.remove('btn-success');
                        button.classList.add('btn-danger');
                        button.innerHTML = '<i class="fas fa-times-circle"></i>';
                        button.setAttribute('title', '{{ __("Inactive") }}');
                    }
                } else {
                    alert('{{ __("Error updating status") }}');
                    console.error('Error:', data.message);
                }
            })
            .catch(error => {
                alert('{{ __("An error occurred") }}');
                console.error('Error:', error);
            });
        });
    });
});
</script>

@endsection
