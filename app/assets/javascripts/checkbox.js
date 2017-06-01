$(document).ready(function() {
  $(".flat-form-choice").click(function(){
    $(this).toggleClass("active")
  });

  $(".flat-radio-button").click(function(){
   $(".flat-radio-button").removeClass("active");
   $(this).toggleClass("active");
  });
});
