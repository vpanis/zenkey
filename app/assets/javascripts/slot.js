 $(function() {
     $('#datepicker-slots').datepicker({
      format: "dd/mm/yyyy",
      weekStart: 1,
      startDate: "today",
      todayHighlight: true,
      multidate: false,
    });
     $('#datepicker-slots').on('changeDate', function(e) {
        var date = strftime("%d/%m/%Y", e.date);
        $('.slot-form').addClass("hidden");
        $('.slot-form[data-date="' + date + '"]').removeClass("hidden");
     });
  });

