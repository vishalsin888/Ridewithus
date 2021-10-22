<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%;">
	<div class="header" id="home_page">
		<div class="container-fluid" style="height: 80vh;">
			<div class="row align-items-center">
				<div class="col-md-12 text-center my-5 py-5">
					<h2 class="py-5">Welcome To Users Dash Board</h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="container-fluid px-5">
									<div class="row">
										<div class="col-md-4 md-offset-2">

											<h5>
												<i class="fas fa-plane-departure" style="color: #5e066e;"></i>
												Select Source
											</h5>
											<input type="text" id="location_from" style="width: 70%;">
											<input type="hidden" id="looking_from" value=""> 
											<input type="hidden" id="from_lattitude" value=""> 
											<input
												type="hidden" id="from_longitude" value="">
											<ul
												class="list-group"
												style="display: none; width: 70%;" id="cab_from">

											</ul>
										</div>
										<div class="col-md-4">

											<h5>
												<i class="fas fa-plane-arrival" style="color: #5e066e;"></i>
												Choose Destination
											</h5>
											<input type="text" id="location_to" style="width: 70%;">
											<input type="hidden" id="going_to" value=""> 
											<input type="hidden" id="to_lattitude" value=""> 
											<input
												type="hidden" id="to_longitude" value=""> 
											<ul
												class="list-group"
												style="display: none; width: 70%;" id="cab_to">

											</ul>
										</div>
										<div class="col-md-3 md-offset-1">
											<h5>
												<i class="fas fa-user-friends" style="color: #5e066e;"></i>
												Passengers
											</h5>
											<select class="form-select"
												aria-label="Default select example" style="width: 35%;"
												id="no_passenger">
												<option selected disabled="disabled">Choose...</option>
												<option value="1">One</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
												<option value="4">Four</option>
											</select>
										</div>
									</div>
								</div>
								<div class="container py-5 my-3 text-center">
									<button class="btn btn-success" style="width: 20%;"
										id="search_cabs">Search</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="bootstrap-wrapper" style="display: none; padding: 5% 0%;"
	id="cab_results">
	<div class="container text-center"
		style="background: linear-gradient(to top, #5172657a 0%, #64555633 100%);">
		<div class="row">
			<div class="col-md-12">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Cab</th>
							<th scope="col">From</th>
				      		<th scope="col">To</th>
				      		<th scope="col">Passengers</th>
							<th scope="col">Cab Type</th>
							<th scope="col">Cab Number</th>
							<th scope="col">Driver Name</th>
							<th scope="col">Distance</th>
							<th scope="col">Fare</th>
							<th scope="col">Status</th>
						</tr>
					</thead>
					<tbody id="tab_content">

					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<div class="modal" id="paymentModal" aria-labelledby=paymentModalLabel" aria-hidden="true" style="top:15%;">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="paymentModalLabel">Payment For <span id="from_to_ride"></span>Ride</h5>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="card-number" class="col-form-label">Card Number</label>
            <input type="number" class="form-control" id="card-number">
          </div>
           <div style="width: 30%;display: inline-block;" class="mb-3">
            <label for="cvv" class="col-form-label">Cvv</label>
            <input type="number" class="form-control" id="cvv">
          </div>
           <div class="mb-3" style="width:68%;display: inline-block;">
            <label for="amount" class="col-form-label">Amount</label>
            <input type="text" class="form-control" id="amount" style="color:red;">
          </div>
           <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Name of Payee</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" onclick="closePay();">Cancel</button>
        <button type="button" class="btn btn-primary" id="pay_proceed" >Proceed</button> 
      </div>
    </div>
  </div>
</div>

<div class="bootstrap-wrapper" style="display: none; padding: 5% 0%;"
	id="cab_no_results">
	<div class="container text-center">
		<div class="row">
			<div class="col-md-12">
				<h3>
					<i style="font-size: 2.3rem; font-weight: bold;"
						class="fas fa-car-crash"></i> No Cabs Found !!
				</h3>
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