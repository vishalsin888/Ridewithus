<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%">
	<div class="contactusheader" id="home_page">
		<div class="container-fluid" style="height: 80vh;">
			<div class="row align-items-center">
				<div class="col-md-12 text-center my-5 py-5">
					<h2 class="py-5">
						<img width="50" height="50" alt=""
							src="https://cdn.pixabay.com/photo/2020/08/22/09/57/carpool-5508006_960_720.png">
						CarPooling
					</h2>
					<section class="message py-5" id="aboutus">
						<div class="container text-center">
							<h1>We Have Got What You Need</h1>
							<p>Carpooling is the sharing of car journeys so that more
								than one person travels in a car, and prevents the need for
								others to have to drive to a location themselves.By having more
								people using one vehicle, carpooling reduces each person's
								travel costs such as: fuel costs, tolls, and the stress of
								driving. Carpooling is also a more environmentally friendly and
								sustainable way to travel as sharing journeys reduces air
								pollution, carbon emissions, traffic congestion on the roads,
								and the need for parking spaces. Authorities often encourage
								carpooling, especially during periods of high pollution or high
								fuel prices. Car sharing is a good way to use up the full
								seating capacity of a car, which would otherwise remain unused
								if it were just the driver using the car.</p>
							<a href="/dashboard" class="btn btn-primary">Check It Out</a>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>

	<!-- contact us form -->
	<div class="container-fluid py-5" style="background: linear-gradient(to top, #aab2b7 0%, #93976f59 100%);">
	 <h1 class="h1-responsive font-weight-bold text-center py-2">Contact us</h1>
    <!--Section description-->
    <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within
        a matter of hours to help you.</p>
	
		<div class="row">
			<div class="col-md-12">
				<div class="container-fluid px-5">
					<div class="row">
						<div class="col-md-4 offset-md-4">
							<div class="card" style="color: blue;border-radius: 6px;">
								<h5 class="bg-success py-2 mb-0 text-center" style="color: white;">Contact Us</h5>
								<div class="card-body">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1">
												<i class="fas fa-user" style="color: #5e066e;"></i>
												</span>
										</div>
										<input type="text" class="form-control" id="feedname"
											placeholder="Your Name" aria-label="Username"
											aria-describedby="basic-addon1">
									</div>
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1">
											<i
												class="fas fa-at" style="color: #5e066e;"></i></span>
										</div>
										
										<input type="text" class="form-control" id="feedemail"
											placeholder="Your Email" aria-label="Username"
											aria-describedby="basic-addon1">
									
									</div>
									
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"><i
												class="fas fa-address-card" style="color: #5e066e;"></i></span>
										</div>
										<input type="text" class="form-control" id="feedsubject"
											placeholder="Subject" aria-label="Username"
											aria-describedby="basic-addon1">
									</div>
									<div class="form-group" >
									    <label for="exampleFormControlTextarea1">Your Comment</label>
									    
									    <textarea class="form-control" id="feedcomment" rows="3"></textarea>
									 </div>
									
									<div class="container text-center py-2">
										<button class="btn btn-primary" id="submit_feedback">Submit
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

<%@include file="footer.jsp"%>