/**
 * 
 */
 
$(document).ready(function(){
	
	$("#user_reg_form").on("submit", function(event){
	
	event.preventDefault();
	submitRegisterForm();
});

});

function submitRegisterForm(){
	var regData = {};
	regData["username"] = $("#username").val();
	regData["useremail"] = $("#useremail").val();
	regData["usermobile"] = $("#usermobile").val();
	regData["userpassword"] = $("#userpassword").val();
	
	$.ajax({
		
		type : 'POST',
		url : '/createuser',
		contentType: "application/json",
		data : JSON.stringify(regData),
		dataType: 'json',
        cache: false,
		success : function(){
			window.location.href="/login";
			//document.location.reload();
		},
		error : function (){
			alert('error');
			document.location.reload();
		}
	});
}
 
