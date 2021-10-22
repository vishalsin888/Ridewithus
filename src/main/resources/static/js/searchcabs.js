/**
 * 
 */
 
$(document).ready(function(){
	
$("#search_cabs").on("click", function(event){
	
	event.preventDefault();
	searchCabsInBetween();
});

$("#location_from").on("keyup", function(){
	
	if($("#location_from").val().length == 3 ){
		searchCityList($("#location_from").val(), "from");
	}
	
	if($("#location_from").val().length < 3 ){
		$("#cab_from").html("");
		$("#cab_from").siblings("#from_lattitude").val("");
		$("#cab_from").siblings("#from_longitude").val("");
		$("#cab_from").hide();
	}
	
});

$("#location_to").on("keyup", function(){
	if($("#location_to").val().length == 3 ){
		searchCityList($("#location_to").val(), "to");
	}
	
	if($("#location_to").val().length < 3 ){
		$("#cab_to").html("");
		$("#cab_to").siblings("#to_lattitude").val("");
		$("#cab_to").siblings("#to_longitude").val("");
		$("#cab_to").hide();
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

});

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
			to_longitude : $("#to_longitude").val()
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
				      '<td class="pass">'+$("#no_passenger").val()+'</td>'+
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
function searchCityList(cityChars, processBy){
	
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
				if(processBy == "from"){
					$("#cab_from").show();
					$("#cab_from").append(
					'<li class="list-group-item"><label>'+
					'<input type="hidden" class="from_lattitude" value="'+value[2]+'">'+
					'<input type="hidden" class="from_longitude" value="'+value[3]+'">'+
					'<input type="radio" name="from_city" value="'+value[0]+'"/>'+value[1]+' , '+value[4]+'</label></li>'
				);
				}
				
				if(processBy == "to"){
					$("#cab_to").show();
					$("#cab_to").append(
					'<li class="list-group-item"><label>'+
					'<input type="hidden" class="to_lattitude" value="'+value[2]+'">'+
					'<input type="hidden" class="to_longitude" value="'+value[3]+'">'+
					'<input type="radio" name="to_city" value="'+value[0]+'"/>'+value[1]+' , '+value[4]+'</label></li>'
				);
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


 
