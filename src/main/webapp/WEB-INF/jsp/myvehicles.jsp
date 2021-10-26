<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%;">
	<div class="vehiclespage" id="home_page">
		<div class="container-fluid" style="height: 40vh;">
			<div class="row align-items-center">
				<div class="col-md-12 text-center my-5 py-5">
					<h2 class="py-4">Add Vehicles Here</h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="container-fluid px-5">
									<div class="row">
										<div class="col-md-3 offset-md-1">
											<div class="card" style="color: blue;">
											 <h5 class="bg-primary py-2 mb-0" style="color: white;">Vehicle Details</h5>
												<div class="card-body">
													<div class="input-group mb-2">
														<div class="input-group-prepend">
															<span class="input-group-text" id="basic-addon1"><i class="fas fa-plane-arrival" style="color: #5e066e;"></i></span>
														</div>
														
														<input type="text" class="form-control" id="vehiclename"
															placeholder="Vehicle Name" aria-label="Username"
															aria-describedby="basic-addon1">
														
													</div>
													<div class="input-group mb-2">
														<div class="input-group-prepend">
															<label class="input-group-text" for="inputGroupSelect01"><i class="fas fa-taxi" style="color: #5e066e;"></i></label>
														</div>
														<select class="custom-select" id="vehicleType">
															<option selected disabled="disabled">Vehicle Type...</option>
															<option value="PRIME">PRIME</option>
															<option value="SEDAN">SEDAN</option>
															<option value="ACCESS">ACCESS</option>
															<option value="XUV">XUV</option>
															<option value="MINI">MINI</option>
															<option value="AUTO">AUTO</option>
															<option value="MICRO">MICRO</option>
															<option value="PLAY">PLAY</option>
														</select>
													</div>
													<div class="input-group mb-2">
														<div class="input-group-prepend">
															<span class="input-group-text" id="basic-addon1"><i class="fas fa-address-card" style="color: #5e066e;"></i></span>
														</div>
														<input type="text" class="form-control" id="vehicleNumber"
															placeholder="vehicle Number" aria-label="Username"
															aria-describedby="basic-addon1">
													</div>
													<div class="input-group mb-2">
														<div class="input-group-prepend">
															<span class="input-group-text" id="basic-addon1"><i class="fas fa-id-badge" style="color: #5e066e;"></i></span>
														</div>
														<input type="text" class="form-control" id="vehicleDriverName"
															placeholder="Driver Name" aria-label="Username"
															aria-describedby="basic-addon1">
													</div>
													<div class="input-group mb-2">
														<div class="input-group-prepend">
															<label class="input-group-text" for="inputGroupSelect01"><i class="fas fa-user-friends" style="color: #5e066e;"></i></label>
														</div>
														<select class="custom-select" id="vehicle_no_of_passengers">
															<option selected disabled="disabled">Seating Capacity...</option>
															<option value="1">One</option>
															<option value="2">Two</option>
															<option value="3">Three</option>
															<option value="4">Four</option>
															<option value="5">Five</option>
															<option value="6">Six</option>
														</select>
													</div>
													<div class="container text-center pt-3">
														<button class="btn btn-success" id="add_vehicle">Add Vehicle
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="bootstrap-wrapper" id="my_allrides" style="margin: 0%;">
	<div class="container-fluid text-center"
		style="background: linear-gradient(to top, #5172657a 0%, #64555633 100%);">
		<div class="row">
			<div class="col-md-12">
				<h3 class="text-center my-4">All Your Saved Vehicles</h3>
				<div class="container-fluid text-center my-3" id="vehicles_data_btn">
					<a class="btn btn-success" onclick="loadAllVehicles()" style="color:white;"> View All</a>
				</div>

				<div class="container text-center my-3" id="vehicles_data"
					style="display: none;background: linear-gradient(to top, #5172657a 0%, #64555633 100%);">
					<div class="row">
						<div class="col-md-12">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Vehicle Name</th>
										<th scope="col">Vehicle Number</th>
										<th scope="col">Vehicle Type</th>
										<th scope="col">Driver Name</th>
										<th scope="col">Seating Capacity</th>
									</tr>
								</thead>
								<tbody id="myvehicles_data">

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<section class="contact"
	style="background: linear-gradient(to top, #fad0c4 0%, #ffd1ff 100%);">
	<div class="container text-center py-5">
		<h1>Lets get In Touch !</h1>
		<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
			Obcaecati dolor autem fuga nulla explicabo fugit id adipisci aliquam
			minima dicta tenetur facere ipsa nihil, nobis eaque tempora placeat
			cupiditate totam.</p>
		<i class="fa fa-phone text-warning conts mr-3"
			style="font-size: 1.5rem;"></i> <i
			class="fa fa-heart text-danger conts" style="font-size: 1.5rem;"></i>
		<p>+91-8180026269</p>
		<p>www.quickxpertinfotech.com</p>
	</div>
</section>
<%@include file="footer.jsp"%>