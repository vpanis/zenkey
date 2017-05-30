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
    $('#datetimepicker').on('changeDate', function() {
      $('#datetimepicker_hidden_field').val(
          $('#datetimepicker').data('DateTimePicker')
      );
   });
});
