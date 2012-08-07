  //= require jquery
$(function() {


$("#email").keyup(function() {
     $("#email").removeClass("error");
     return false;
  });




  	
  $("#addbutton").click(function() {
 if(validateEmail()){
 	$.get($("#likes_form").attr("action"), $("#likes_form").serialize(), null, "script");
return false;
 }
			return false;
  });




	//validation functions
	function validateEmail(){
 	var email = $("#email");
		//testing regular expression
		var a = $("#email").val();
		var filter = /^[a-zA-Z0-9]+[a-zA-Z0-9_.-]+[a-zA-Z0-9_-]+@[a-zA-Z0-9]+[a-zA-Z0-9.-]+[a-zA-Z0-9]+.[a-z]{2,4}$/;
		//if it's valid email
		if(filter.test(a)){
			email.removeClass("error");
			return true;
		}
		//if it's NOT valid
		else{
			email.addClass("error");
			return false;
		}
	}



  });
