$(function(){

  $(".navbar-link").on("click", function(e){
    // Change active tab
    $(".navbar-link").removeClass("active");
    $(this).addClass("active");
});
