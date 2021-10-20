<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%">
	<div class="container-fluid"
		style="background-color: #f1ede0 !important">
		<div class="row">
			<div class="col-md-4 offset-md-1 px-auto my-5" style="padding-top: 5%;">
				<div class="signup-sidebar"></div>
			</div>
			<div class="col-md-4 offset-md-1">
				<div class="container" style="height: 80vh;">
					<div class="container-fluid py-5">
						<h4 class="card-title text-center my-2">Create Account</h4>
						<p>Get Started with Free Registration with Us</p>

						<a href="/login" class="btn btn-block btn-danger"> <i
							class="fab fa-google mr-2"></i> Login with Google
						</a> <a href="/login" class="btn btn-block btn-primary">
							<i class="fab fa-facebook-f mr-2"></i> Login with Facebook
						</a>

						<hr class="bg-light my-4">

						<!-- form  -->
						<form id="user_reg_form">

							<!-- username  -->
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-user"></i>
									</div>
								</div>
								<input type="text" id="username" class="form-control" placeholder="Enter Name">
							</div>

							<!-- email  -->
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-envelope"></i>
									</div>
								</div>
								<input type="email" id="useremail" class="form-control"
									placeholder="Enter Email">
							</div>

							<!-- phone  -->
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-phone"></i>
									</div>
								</div>
								<select class="custom-sel"
									style="max-width: 80px; border-radius: 3px; border-color: rgb(207, 191, 191); background: white;">
									<option value="">+91</option>
									<option value="">+92</option>
									<option value="">+93</option>
									<option value="">+94</option>
								</select> <input type="number" id="usermobile" class="form-control"
									placeholder="Enter Mobile No">
							</div>

							<!-- password  -->
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-lock"></i>
									</div>
								</div>
								<input type="password" id="userpassword" class="form-control"
									placeholder="Enter Password">
							</div>

							<!-- repeat password  -->
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-unlock"></i>
									</div>
								</div>
								<input type="password" id="userpasswordrep" class="form-control"
									placeholder="Repeat Password">
							</div>

							<button type="submit" id="user_signup" class="btn btn-block btn-success my-4">Create
								Account</button>

							<div class="container text-center">
								<p>
									Already Have Account ? <a href="/login">Log In</a>
								</p>
							</div>
							

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>








