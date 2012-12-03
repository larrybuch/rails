$(function()
{

  $('#enqueue').click(enqueue);
  $('#dequeue').click(dequeue);

});


function enqueue()
{
  $.ajax({
    type: "POST",
    url: "/enqueue",
    data: { color: $('#color').val() }
  }).done(function(msg) {
    show_colors(msg.data);
  });
}

function dequeue()
{
  $.ajax({
    type: "POST",
    url: "/dequeue"
  }).done(function(msg) {
    show_colors(msg.data);
  });
}

function show_colors(colors)
{

  console.log('hey!');

  $('#colors-box').empty();

  for(var i = 0; i < colors.length; i++)
  {
    var color = $('<div>');
    color.addClass('color');
    color.css('background-color', colors[i]);
    $('#colors-box').prepend(color);
  }
}