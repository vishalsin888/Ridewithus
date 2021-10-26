 
$(document).ready(function(){
	
	$("#user_login_form").on("submit", function(event){
	
	event.preventDefault();
	submitLoginForm();
});

});

function submitLoginForm(){
	$.ajax({
		
		type : 'GET',
		url : '/userlogin',
		contentType: "application/json",
		data : {
			useremail : $("#loginemail").val().trim(),
			userpassword : $("#loginpassword").val().trim()
		},
		dataType: 'json',
        cache: false,
		success : function(){
			window.location.href = "/homepage";
		},
		error : function (){
			alert('error');
			document.location.reload();
		}
	});
}
 
