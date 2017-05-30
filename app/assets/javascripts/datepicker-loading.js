  $(function() {
      $('input.datepicker').data({behaviour: "datepicker"}).datepicker();
  });

  $('input#flat_availability_date').datepicker({
    format: "dd/mm/yyyy",
    weekStart: 1,
    startDate: "today",
    todayHighlight: true,
    multidate: false,
  });
