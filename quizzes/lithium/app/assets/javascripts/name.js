$(function(){

  $('#name_form').hide();
  $('#reveal_name').hide();

  $('#name_button').click(show_form);
  $('#boogie').click(show_message);

});


function show_form ()
{
  $('#name_button').hide();
  $('#name_form').show();
}

function show_message ()
{
  $('#reveal_name').show();
}