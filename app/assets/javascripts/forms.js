$(document).ready(function() {
   $('input[type="radio"]').click(function(data) {
       if(data.currentTarget.id === 'cleaning_type_spring') {

            $('#extras').show();
       }

       else {
            $('#extras').hide();
       }
   });
   var a=0;

  $('#booking_bedrooms').change(function(data){
    $('#bed_cost').text($(this)[0].value*16)
    });

  $('#booking_bathrooms').change(function(data){
    $('#bath_cost').text($(this)[0].value*16)
    });

  if(document.getElementById('booking_in_win').checked) {
      $("#in_window_cost").text(16);
  } else {
      $("#in_window_cost").text(0);
    }

});
