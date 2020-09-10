@extends('admin.index')
@section('content')
	<div class="page-wrapper">
		<!-- ============================================================== -->
		<!-- Bread crumb and right sidebar toggle -->
		<!-- ============================================================== -->
		<div class="page-breadcrumb">
			<div class="row">
				<div class="col-7 align-self-center">
					<h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Admin</h4>
					<div class="d-flex align-items-center">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb m-0 p-0">
								<li class="breadcrumb-item text-muted active" aria-current="page">Administrator</li>
								<li class="breadcrumb-item text-muted" aria-current="page">Admin</li>
								<li class="breadcrumb-item text-muted" aria-current="page">Add</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Bread crumb and right sidebar toggle -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Container fluid  -->
		<!-- ============================================================== -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Add Admin</h4>
							<h6 class="card-subtitle">Add new member to your administrator team</h6>
							@if (isset($errors))
								<div class="col-md-4 error">
									<span class="error-text"><i class="fa fa-exclamation-triangle"></i> {{$errors}}</span>
								</div>
							@endif
							<form action="" method="POST">
								@csrf
								<div class="form-group">
									<h5>Username <i class="fa fa-certificate" style="color: #ff6b6b;"></i></h5>
									<input type="text" class="form-control" name="username" placeholder="Username">
								</div>

								<div class="form-group">
									<h5>Password <i class="fa fa-certificate" style="color: #ff6b6b;"></i></h5>
									<input type="password" class="form-control" name="password" placeholder="Password">
								</div>

								<div class="form-group">
									<h5>Full Name</h5>
									<input type="text" class="form-control" name="fullname" placeholder="Full Name">
								</div>

								<div class="form-group">
									<h5>Email <i class="fa fa-certificate" style="color: #ff6b6b;"></i></h5>
									<input type="email" class="form-control" name="email" placeholder="abc@xyz.com">
								</div>

								<div class="form-group">
									<h5>Phone <i class="fa fa-certificate" style="color: #ff6b6b;"></i></h5>
									<input type="text" class="form-control" name="phone" placeholder="Phone">
								</div>

								<div class="form-group">
									<h5>Address</h5>
									<input type="text" class="form-control" name="address" placeholder="1 Ba Trieu Street">
								</div>

								<div class="form-group">
									<h5>Image</h5>
									<div class="custom-file">
										<input type="file" class="custom-file-input" id="image">
										<label class="custom-file-label" for="image">Choose Image</label>
									</div>
								</div>

								<div class="form-group">
									<h5>Level </h5>
									<div class="form-check form-check-inline">
										<div class="custom-control custom-radio">
											<input type="radio" class="custom-control-input" id="level0" name="level" value="0" checked>
											<label class="custom-control-label" for="level0">Admin</label>
										</div>
									</div>
									<div class="form-check form-check-inline">
										<div class="custom-control custom-radio">
											<input type="radio" class="custom-control-input" id="level1" name="level" value="1">
											<label class="custom-control-label" for="level1">Staff</label>
										</div>
									</div>
								</div>

								<button type="submit" class="btn waves-effect waves-light btn-success">Submit</button>
								<button type="reset" class="btn waves-effect waves-light btn-primary">Reset</button>
								<a href="{{url('admin/list') }}" class="btn waves-effect waves-light btn-danger"><i class="fas fa-plus"></i> Cancel</a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Container fluid  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- footer -->
		<!-- ============================================================== -->
		<footer class="footer text-center">
			All Rights Reserved by Adminmart. Designed and Developed by <a
				href="https://wrappixel.com">WrapPixel</a>.
		</footer>
		<!-- ============================================================== -->
		<!-- End footer -->
		<!-- ============================================================== -->
	</div>
@endsection