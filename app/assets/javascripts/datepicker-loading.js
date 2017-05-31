// Date picker
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

// Date time picker
$(function () {
    $('#datetimepicker').datetimepicker({
        inline: true,
        sideBySide: true,
        stepping: 15,
        format: "dd/mm/yyyy HH:mm",
    });

    $('#datetimepicker').datetimepicker();
    $('#datetimepicker').on('dp.change', function(e) {
      $('#datetimepicker_hidden_field').val(
          e.date.format("DD/MM/YYYY HH:mm")
      );
   });
});
