$(document).ready(function(){
	
	$("#submit_feedback").on("click", function(){
		
		submitFeedback();
		
	});
	
	$("#add_vehicle").on("click", function(){
		
		addVehicles();
		
	});
	
	
});

function submitFeedback(){
	
	var feedbackData = {};
	feedbackData["feedemail"] = $("#feedemail").val();
	feedbackData["feedname"] = $("#feedname").val();
	feedbackData["feedsubject"] = $("#feedsubject").val();
	feedbackData["feedcomment"] = $("#feedcomment").val();
	
	$.ajax({
		
		type : 'POST',
		url : '/sendFeedback',
		contentType: "application/json",
		data : JSON.stringify(feedbackData),
		dataType: 'json',
        cache: false,
		success : function(){
			showSuccess("/contactus");
		},
		error : function (){
			alert('error');
			document.location.reload();
		}
	});
}

function addVehicles(){
	
	var vehicleData = {};
	vehicleData["vehiclename"] = $("#vehiclename").val();
	vehicleData["vehicleType"] = $("#vehicleType").val();
	vehicleData["vehicleNumber"] = $("#vehicleNumber").val();
	vehicleData["vehicleDriverName"] = $("#vehicleDriverName").val();
	vehicleData["vehicle_no_of_passengers"] = $("#vehicle_no_of_passengers").val();
	
	$.ajax({
		
		type : 'POST',
		url : '/addVehicle',
		contentType: "application/json",
		data : JSON.stringify(vehicleData),
		dataType: 'json',
        cache: false,
		success : function(){
			showSuccess("/myvehicles");
		},
		error : function (){
			alert('error');
			document.location.reload();
		}
	});
	
}

function loadAllVehicles(){
		$.ajax({
		type : 'GET',
		url : '/myAllVehicles',
		contentType: "application/json",
		dataType: 'json',
        cache: false,
		success : function(responseJson){
			console.log(responseJson);
			JSON.stringify(responseJson);
			$("#vehicles_data").show();
			$("#vehicles_data_btn").hide();
			$.each(responseJson , function(key,value){
				$("#myvehicles_data").append(
					'<tr>'+
				      '<td class="from">'+value[0]+'</td>'+
				      '<td class="to">'+value[1]+'</td>'+
				      '<td class="pass">'+value[2]+'</td>'+
				      '<td class="c_type">'+value[3]+'</td>'+
				      '<td class="c_num">'+value[4]+'</td>'+
				    '</tr>'
				);
			});
			
		},
		error : function (){
			$("#vehicles_data").hide();
			$("#vehicles_data_btn").show();
			alert('error');
			document.location.reload();
		}
	});
	
}






var url="";
function showSuccess(url){
	url = url;
	$("#successModal").show();
}

function closeSuccess(){
	
	window.location.href = url;
	$("#successModal").hide();
}


