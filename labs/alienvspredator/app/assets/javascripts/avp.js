$(function()
{

  $('#creature_form').hide();
  $('#new_creature').click(show_form);

});

function show_form ()
{
  $('#creature_form').slideToggle();
  //('#new_creature').hide();
}