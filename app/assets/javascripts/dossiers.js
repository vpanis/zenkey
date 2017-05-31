$('#flat_income_ratio').change(function(event) {
  var a = $('#flat_income_ratio').val();
  var b = parseInt($('#rent').html());
  var new_income = a * b;
  $('#income').html(Math.round(new_income) + " €");
});

$('#flat_income_ratio').click(function(event) {
  var a = $('#flat_income_ratio').val();
  var b = parseInt($('#rent').html());
  var new_income = a * b;
  $('#income').html(Math.round(new_income) + " €");
});

$('#flat_warrantor_income_ratio').change(function(event) {
  var c = $('#flat_warrantor_income_ratio').val();
  var b = parseInt($('#rent').html());
  var new_warrantor_income = c * b;
  $('#warrantor-income').html(Math.round(new_warrantor_income) + " €");
});

$('#flat_warrantor_income_ratio').click(function(event) {
  var c = $('#flat_warrantor_income_ratio').val();
  var b = parseInt($('#rent').html());
  var new_warrantor_income = c * b;
  $('#warrantor-income').html(Math.round(new_warrantor_income) + " €");
});

$('#flat_has_warrantor_true').click(function(event) {
  $('#warrantor-income-box').removeClass('hidden');
});

$('#flat_has_warrantor_false').click(function(event) {
  $('#warrantor-income-box').addClass('hidden');
});
