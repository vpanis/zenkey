 $(function() {
     $('input.datepicker').datepicker({
      format: "dd/mm/yyyy",
      weekStart: 1,
      startDate: "today",
      todayHighlight: true,
      multidate: false,
    });

     $('#datepicker').datepicker();
     $('#datepicker').on('changeDate', function() {
         $('#datepicker_hidden_field').val(
             $('#datepicker').datepicker('getFormattedDate')
         );
     });
  });
