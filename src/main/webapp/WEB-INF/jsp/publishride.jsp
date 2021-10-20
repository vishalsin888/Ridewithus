<%@include file="header.jsp"%>

<div class="bootstrap-wrapper" style="padding-top: 5%;">
	<div class="publishpage" id="home_page">
		<div class="container-fluid" style="height: 80vh;">
			<div class="row align-items-center">
				<div class="col-md-12 text-center my-5 py-5">
					<h2 class="py-5">Become a Driver and save on travel costs by
						sharing your ride with passengers.</h2>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="container-fluid px-5">
									<div class="row">
										<div class="col-md-3 offset-md-1">
											<div class="card" style="color: blue;">
												<div class="card-body">
													 <h5 class="bg-primary py-2" style="color: white;">Publish Ride</h5>
													<div class="input-group mb-3 mt-4">
														<div class="input-group-prepend">
															<span class="input-group-text" id="basic-addon1"><i class="fas fa-plane-departure" style="color: #5e066e;"></i></span>
														</div>
														<input type="text" class="form-control"
															placeholder="Leaving from.." aria-label="Username"
															aria-describedby="basic-addon1">
													</div>
													<div class="input-group mb-4">
														<div class="input-group-prepend">
															<span class="input-group-text" id="basic-addon1"><i class="fas fa-plane-arrival" style="color: #5e066e;"></i></span>
														</div>
														<input type="text" class="form-control"
															placeholder="Going to.." aria-label="Username"
															aria-describedby="basic-addon1">
													</div>
													<div class="input-group mb-4">
														<div class="input-group-prepend">
															<label class="input-group-text" for="inputGroupSelect01"><i class="fas fa-user-friends" style="color: #5e066e;"></i></label>
														</div>
														<select class="custom-select" id="inputGroupSelect01">
															<option selected disabled="disabled">Choose...</option>
															<option value="1">One</option>
															<option value="2">Two</option>
															<option value="3">Three</option>
															<option value="4">Four</option>
														</select>
													</div>
													<h4 class="card-text mb-3" style="color:#4b9ccb;">Save up to <b> &#x20B9; 880</b> on your first ride.</h4>
													<div class="container text-center">
														<button class="btn btn-success" id="publish_cabs">Publish
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
<div class="bootstrap-wrapper"
	id="publish_benifits">
	<div class="container-fluid text-center"
		style="background: linear-gradient(to top, #5172657a 0%, #64555633 100%);">
		<div class="row">
			<div class="col-md-12">
			<section class="services">
        <div class="container-fluid text-center py-5">
                <h1 class="py-2">About Publish Ride</h1>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <i class="fas fa-cloud-download-alt" style="font-size: 5rem;padding: 2rem;"></i>
                          
                            <h3>Save on travel costs</h3>
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora
                                 voluptatibus nulla unde accusamus ipsum voluptates voluptas eum 
                                 ratione minus ipsa repellendus consectetur, recusandae aperiam 
                                 sunt commodi? Inventore quis veritatis dignissimos.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-bell" style="font-size: 5rem;padding: 2rem;"></i>
                            <h3>Join trustworthy community</h3>
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora
                                 voluptatibus nulla unde accusamus ipsum voluptates voluptas eum 
                                 ratione minus ipsa repellendus consectetur, recusandae aperiam 
                                 sunt commodi? Inventore quis veritatis dignissimos.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-braille" style="font-size: 5rem;padding: 2rem;"></i>
                            <h3>Carpooling made simple</h3>
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora
                                 voluptatibus nulla unde accusamus ipsum voluptates voluptas eum 
                                 ratione minus ipsa repellendus consectetur, recusandae aperiam 
                                 sunt commodi? Inventore quis veritatis dignissimos.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </section>
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