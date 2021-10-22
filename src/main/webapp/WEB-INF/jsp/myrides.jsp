<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%;">
	<div class="ridespage" id="home_page">
		<div class="container-fluid" style="height: 40vh;">
			<div class="row align-items-center">
				<div class="col-md-12 text-center my-5 py-5">
					<h2 class="py-5">All Your Saved and Completed Rides</h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="container-fluid px-5">
									<div class="row"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="bootstrap-wrapper" id="my_allrides" style="margin: 5% 0%;">
	<div class="container-fluid text-center"
		style="background: linear-gradient(to top, #5172657a 0%, #64555633 100%);">
		<div class="row">
			<div class="col-md-12">
				<h3 class="text-center my-2">Recent rides</h3>
				<div class="container-fluid text-center my-3">
					<a class="btn btn-success" onclick="loadAllRides()" style="color:white;"> All Rides</a>
				</div>

				<div class="container text-center my-3"
					style="display: none;background: linear-gradient(to top, #5172657a 0%, #64555633 100%);">
					<div class="row">
						<div class="col-md-12">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">From</th>
										<th scope="col">To</th>
										<th scope="col">Cab Type</th>
										<th scope="col">Distance</th>
										<th scope="col">Fare</th>
										<th scope="col">Distance</th>
										<th scope="col">Booked By</th>
									</tr>
								</thead>
								<tbody id="myrides_data">

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