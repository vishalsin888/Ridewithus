<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%; padding-bottom: 5%;">
	<div class="cabs_header" id="home_page">
		<div class="container-fluid" style="height: 30vh;">
			<div class="row align-items-center">
				<div class="col-md-12 text-center my-5 py-5">
					<h2 class="py-5">Welcome To CarPooling Cabs</h2>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="bootstrap-wrapper">
	<div class="container text-center" style="background: linear-gradient( to top , #5172657a 0% , #64555633 100%);">
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

<%@include file="footer.jsp"%>