$(document).ready(function(){

  $('.datepicker').datetimepicker({
  	ampm: false,
  	timeFormat: 'hh:mm:ss',
  	dateFormat: 'yy-mm-dd'
  });

  $(".event_dialog").click(function() {
    date = $(this).attr('year') + '-' + $(this).attr('month') + '-' + $(this).attr('day')
    $('#event_start_at').val(date);
    $('#event_end_at').val(date);
    $('#new_event_dialog').dialog('open');
    return false;
  });

  $( "#new_event_dialog" ).dialog({
  	autoOpen: false,
  	height: 300,
  	width: 350,
  	modal: true,
  	title: "Add a New Event"
  });

});
