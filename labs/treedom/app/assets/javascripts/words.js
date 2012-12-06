$(function()
{

  $('#submit').click(get_words);

});

function get_words()
{
  console.log("get_words!");
  $.ajax({
    type: "POST",
    url: "/words",
    data: { url: $('#url').val() }
  }).done(function(msg) {
    show_words(msg);
  });
}

function show_words(words)
{

  console.log(words.data);

  var str = words.data;
  var n = str.split(",");

  $('#words').empty();

  // for(var i = 0; i < n.length; i++)
  // {
  //   var div = $('<div class="box ' + i + '">' + n[i] + '</div>');
  //   $('#words').append(div);
  // }

  bubbleSort(n);

}

function bubbleSort(a)
{
  var swapped;
  do {
    swapped = false;
    for (var i=0; i < a.length-1; i++) {
      if (a[i] > a[i+1]) {
        var temp = a[i];
        a[i] = a[i+1];
        a[i+1] = temp;
        swapped = true;
      }
    }
  } while (swapped);

  console.log(a);

  for(var i = 0; i < a.length; i++)
  {
    var div = $('<div class="box">' + a[i] + '</div>');
    $('#words').append(div);
  }
}


