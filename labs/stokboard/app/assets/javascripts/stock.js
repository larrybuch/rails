$(function() {
  // setInterval(get_quote,1000);
});

function get_quote ()
{
  console.log('Hey it works!');
    $.ajax({
    type: "GET",
    url: "/return"
  }).done(function(msg) {
    display_graph(msg);
  });
}

function display_graph (stocks)
{
    Morris.Line({
    element: 'stockgraph',
    data: stocks,
    xkey: 'name',
    ykeys: ['quote'],
    labels: ['movie gross']
  });
}