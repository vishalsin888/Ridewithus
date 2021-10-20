<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%">
	<div class="container-fluid" style="background-color: #e7e0f1d9!important;">
		<div class="row">
			<div class="col-md-4 offset-md-1 px-auto my-5" style="padding-top: 5%;">
				<div class="login-sidebar">
				
				</div>
			</div>
			<div class="col-md-4 offset-md-1">
				<div class="container" style="height: 75vh;">
					<div class="container-fluid py-5">
						<h4 class="card-title text-center my-5">Login Here</h4>
						<form id="user_login_form">

							<!-- user email  -->
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-envelope"></i>
									</div>
								</div>
								<input type="email" id="loginemail" class="form-control"
									placeholder="Enter Email">
							</div>

							<!-- user password  -->
							<div class="form-group input-group mb-4">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-lock"></i>
									</div>
								</div>
								<input type="password" id="loginpassword" class="form-control"
									placeholder="Enter Password">
							</div>
							<button type="submit" id="user_login" class="btn btn-block btn-success my-4">Login</button>
							
							<hr class="bg-light my-5">
							
							<a href="/login" class="btn btn-block btn-danger mb-3 mt-4"> <i
								class="fab fa-google mr-2"></i> Login with Google
							</a> <a href="/login" class="btn btn-block btn-primary mb-3"> <i
								class="fab fa-facebook-f mr-2"></i> Login with Facebook
							</a>
							<div class="container text-center">
								<p>
									Don't Have Account ? <a href="/signup">Sign Up</a>
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









