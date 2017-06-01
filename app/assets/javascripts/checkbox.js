$(document).ready(function() {
  $(".flat-form-choice").click(function(){
    console.log("Hello");
    var test = $(this);
    console.log(test)
    $(this).toggleClass("active");
  });
});
