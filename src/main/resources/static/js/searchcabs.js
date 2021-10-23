/**
 * 
 */
 
$(document).ready(function(){
	
$("#search_cabs").on("click", function(event){
	
	event.preventDefault();
	searchCabsInBetween();
});

//search ride
$("#location_from").on("keyup", function(){
	
	if($("#location_from").val().length == 3 ){
		$("#cab_from").html("");
		searchCityList($("#location_from").val(), "from","booking");
	}
	
	if($("#location_from").val().length < 3 ){
		$("#cab_from").html("");
		$("#cab_from").siblings("#from_lattitude").val("");
		$("#cab_from").siblings("#from_longitude").val("");
		$("#cab_from").hide();
	}
	
});

//search ride
$("#location_to").on("keyup", function(){
	if($("#location_to").val().length == 3 ){
		$("#cab_to").html("");
		searchCityList($("#location_to").val(), "to","booking");
	}
	
	if($("#location_to").val().length < 3 ){
		$("#cab_to").html("");
		$("#cab_to").siblings("#to_lattitude").val("");
		$("#cab_to").siblings("#to_longitude").val("");
		$("#cab_to").hide();
	}
});

//publish ride
$("#leaving_from").on("keyup", function(){
	
	if($("#leaving_from").val().length == 3 ){
		$("#cab_from_leaving").html("");
		searchCityList($("#leaving_from").val(), "from","publishing");
	}
	
	if($("#leaving_from").val().length < 3 ){
		$("#cab_from_leaving").html("");
		$("#cab_from_leaving").siblings("#from_lattitude_leaving").val("");
		$("#cab_from_leaving").siblings("#from_longitude_leaving").val("");
		$("#cab_from_leaving").hide();
	}
	
});


//publish rid
$("#going_towards").on("keyup", function(){
	if($("#going_towards").val().length == 3 ){
		$("#cab_towards_going").html("");
		searchCityList($("#going_towards").val(), "to","publishing");
	}
	
	if($("#going_towards").val().length < 3 ){
		$("#cab_towards_going").html("");
		$("#cab_towards_going").siblings("#to_lattitude_going").val("");
		$("#cab_towards_going").siblings("#to_longitude_going").val("");
		$("#cab_towards_going").hide();
	}
});

$("#pay_proceed").on("click" , function(){
	
	$.ajax({
		type : 'GET',
		url : '/bookRide',
		data : {
			from : $("#looking_from").val(),
			to : $("#going_to").val(),
			vehicle :$("."+pay_clz).parent(".bknow").siblings(".c_type").text(),
			distance :  $("."+pay_clz).parent(".bknow").siblings(".dist").text(),
			fare : $("."+pay_clz).parent(".bknow").siblings(".amt").text(),
			cardnumber : $("#card-number").val(),
			cvv : $("#cvv").val(),
			payeename :$("#recipient-name").val()
		},
		contentType: "application/json",
		dataType: 'json',
        cache: false,
		success : function(responseJson){
			//alert('succ');
			
			window.location.href = "/allrides";
			//document.location.reload();
			
		},
		error : function (){
			//alert('error');
			document.location.reload();
		}
	});
	
});



$("#publish_cabs").on("click" , function(){
	
	$.ajax({
		type : 'GET',
		url : '/publishRide',
		data : {
			from_lattitude : $("#from_lattitude_leaving").val(),
			from_longitude : $("#from_longitude_leaving").val(),
			vehicle : $("#publishCabType").val(),
			cabnumber :  $("#publishCabNumber").val(),
			cabdrivername :   $("#publishCabDriverName").val(),
			no_passengers :  $("#publish_no_of_passengers").val()
		},
		contentType: "application/json",
		dataType: 'json',
        cache: false,
		success : function(responseJson){
			alert('succ');
			
			//document.location.reload();
			
		},
		error : function (){
			alert('error');
			//document.location.reload();
		}
	});
	
});


});

// search cabs
$(document).on('click',"#cab_from li label" , function() {
	
	$("#cab_from").siblings("#looking_from").val($(this).text().split(",")[0]);
	
	$("#location_from").val($(this).text());
	$("#cab_from").siblings("#from_lattitude").val($(this).find(".from_lattitude").val());
	$("#cab_from").siblings("#from_longitude").val($(this).find(".from_longitude").val());
	
});

$(document).on('click',"#cab_to li label" , function() {
	
	$("#cab_to").siblings("#going_to").val($(this).text().split(",")[0]);
	$("#location_to").val($(this).text());
	$("#cab_to").siblings("#to_lattitude").val($(this).find(".to_lattitude").val());
	$("#cab_to").siblings("#to_longitude").val($(this).find(".to_longitude").val());
});

//publish cabs
$(document).on('click',"#cab_from_leaving li label" , function() {
	
	$("#cab_from_leaving").siblings("#from_location_leaving").val($(this).text().split(",")[0]);
	$("#leaving_from").val($(this).text());
	$("#cab_from_leaving").hide();
	$("#cab_from_leaving").siblings("#from_lattitude_leaving").val($(this).find(".from_lattitude_leaving").val());
	$("#cab_from_leaving").siblings("#from_longitude_leaving").val($(this).find(".from_longitude_leaving").val());
	
});

$(document).on('click',"#cab_towards_going li label" , function() {
	
	$("#cab_towards_going").siblings("#going_to").val($(this).text().split(",")[0]);
	$("#going_towards").val($(this).text());
	$("#cab_towards_going").hide();
	$("#cab_towards_going").siblings("#to_lattitude_going").val($(this).find(".to_lattitude_going").val());
	$("#cab_towards_going").siblings("#to_longitude_going").val($(this).find(".to_longitude_going").val());
});


//search cabs from here
function searchCabsInBetween(){
	
	$.ajax({
		
		type : 'GET',
		url : '/searchCabs',
		contentType: "application/json",
		data : {
			from : $("#looking_from").val(),
			to : $("#going_to").val(),
			from_lattitude : $("#from_lattitude").val(),
			from_longitude : $("#from_longitude").val(),
			to_lattitude : $("#to_lattitude").val(),
			to_longitude : $("#to_longitude").val(),
			passengers : $("#no_passenger").val()
		},
		dataType: 'json',
        cache: false,
		success : function(responseJson){
			//alert('success');
			console.log(responseJson);
			if(responseJson.length > 0){
				$("#cab_results").show();
				$("#cab_no_results").hide();
			}else{
				$("#cab_results").hide();
				$("#cab_no_results").show();
			}
			var cablogo = "";
			
			$("#tab_content").html("");
			JSON.stringify(responseJson);
			var counter = 0;
			$.each(responseJson , function(key,value){
				counter++;
				//console.log(value[2]);
				if(value[1]=="XUV"){
					cablogo = '<i class="fas fa-car"></i>';
				}else if(value[1]=="SEDAN"){
					cablogo = '<i class="fas fa-truck-monster"></i>';
				}else if(value[1]=="PRIME"){
					cablogo = '<i class="fas fa-truck-pickup"></i>';
				}else if(value[1]=="MICRO"){
					cablogo = '<i class="fas fa-car-side"></i>';
				}else if(value[1]=="AUTO"){
					cablogo = '<i class="fas fa-truck-pickup"></i>';
				}else if(value[1]=="ACCESS"){
					cablogo = '<i class="fas fa-bus-alt"></i>';
				}else if(value[1]=="PLAY"){
					cablogo = '<i class="fas fa-subway"></i>';
				}else if(value[1]=="MINI"){
					cablogo = '<i class="fas fa-shuttle-van"></i>';
				}else{
					cablogo = '<i class="fas fa-subway"></i>';
				}
				
				$("#tab_content").append(
					'<tr>'+
				      '<td scope="row">'+cablogo+'</th>'+
				      '<td class="from">'+$("#looking_from").val()+'</td>'+
				      '<td class="to">'+$("#going_to").val()+'</td>'+
				      '<td class="pass">'+value[6]+'</td>'+
				      '<td class="c_type">'+value[1]+'</td>'+
				      '<td class="c_num">'+value[2]+'</td>'+
				      '<td class="d_name">'+value[3]+'</td>'+
				      '<td class="dist">'+value[0]+' Km</td>'+
				      '<td class="amt"> &#x20B9; '+value[0]*3+'</td>'+
				      '<td class="bknow"><a onclick="bookCab(\'book_car'+counter+'\')" style="cursor: pointer;color:blue;" class="book_car'+counter+'">Book Now</a></td>'+
				    '</tr>'
				);
			});
			
		},
		error : function (){
			alert('error');
			//document.location.reload();
		}
	});
}


//get cities list from here
function searchCityList(cityChars, processBy, purpose){
	
	$.ajax({
		
		type : 'GET',
		url : '/searchCity/'+cityChars,
		contentType: "application/json",
		dataType: 'json',
        cache: false,
		success : function(responseJson){
			console.log(responseJson);
			JSON.stringify(responseJson);
			$.each(responseJson , function(key,value){
				if(purpose == "booking"){
					if(processBy == "from"){
						$("#cab_from").show();
						$("#cab_from").append(
						'<li class="list-group-item"><label>'+
						'<input type="hidden" class="from_lattitude" value="'+value[2]+'">'+
						'<input type="hidden" class="from_longitude" value="'+value[3]+'">'+
						'<input type="radio" class="mr-1" name="from_city" value="'+value[0]+'"/>'+value[1]+' , '+value[4]+'</label></li>'
					);
					}
					
					if(processBy == "to"){
						$("#cab_to").show();
						$("#cab_to").append(
						'<li class="list-group-item"><label>'+
						'<input type="hidden" class="to_lattitude" value="'+value[2]+'">'+
						'<input type="hidden" class="to_longitude" value="'+value[3]+'">'+
						'<input type="radio" class="mr-1" name="to_city" value="'+value[0]+'"/>'+value[1]+' , '+value[4]+'</label></li>'
					);
					}
				}else if(purpose == "publishing"){
						if(processBy == "from"){
						$("#cab_from_leaving").show();
						$("#cab_from_leaving").append(
						'<li class="list-group-item"><label class="mt-2">'+
						'<input type="hidden" class="from_lattitude_leaving" value="'+value[2]+'">'+
						'<input type="hidden" class="from_longitude_leaving" value="'+value[3]+'">'+
						'<input type="radio" class="mr-1" name="from_city_leaving" value="'+value[0]+'"/>'+value[1]+' , '+value[4]+'</label></li>'
					);
					}
					
					if(processBy == "to"){
						$("#cab_towards_going").show();
						$("#cab_towards_going").append(
						'<li class="list-group-item"><label class="mt-2">'+
						'<input type="hidden" class="to_lattitude_going" value="'+value[2]+'">'+
						'<input type="hidden" class="to_longitude_going" value="'+value[3]+'">'+
						'<input type="radio" class="mr-1" name="to_city_going" value="'+value[0]+'"/>'+value[1]+' , '+value[4]+'</label></li>'
					);
					}
				}
			});
			
		},
		error : function (){
			alert('error');
			//document.location.reload();
		}
	});
	
}

function loadAllRides(){
	
	$.ajax({
		type : 'GET',
		url : '/myAllRides',
		contentType: "application/json",
		dataType: 'json',
        cache: false,
		success : function(responseJson){
			console.log(responseJson);
			JSON.stringify(responseJson);
			$("#rides_data").show();
			$("#rides_data_btn").hide();
			$.each(responseJson , function(key,value){
				$("#myrides_data").append(
					'<tr>'+
				      '<td class="from">'+value[0]+'</td>'+
				      '<td class="to">'+value[1]+'</td>'+
				      '<td class="pass">'+value[2]+'</td>'+
				      '<td class="c_type">'+value[3]+'</td>'+
				      '<td class="c_num">'+value[4]+'</td>'+
				      '<td class="d_name">'+value[5]+'</td>'+
				    '</tr>'
				);
			});
			
		},
		error : function (){
			$("#rides_data").hide();
			$("#rides_data_btn").show();
			alert('error');
			document.location.reload();
		}
	});
	
}
var pay_clz = "";
function bookCab(clz){
	pay_clz = clz;
	$("#paymentModal").show();
	$("#amount").val($("."+clz).parent(".bknow").siblings(".amt").text());
	
}

function closePay(){
	$("#paymentModal").hide();
}


 
