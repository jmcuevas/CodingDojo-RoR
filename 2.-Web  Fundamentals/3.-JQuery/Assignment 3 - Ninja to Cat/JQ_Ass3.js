$('dcument').ready(function() {

  // Creates 5 new divs  each one with a background image and position them.
  for(var i = 1; i <= 5; i++ ) {
    $('body').append('<div class="image_container" id="container' + i + '"></div>')
    var ypos = (i - 1) * (-108);
    var cont = "#container" + i;
    $(cont).css('background-position', '0px ' + ypos + 'px')
  }

  // Switches bewteen the images
  $('body').on("click", "div", function() {
    var cat = "img1.jpg";
    var ninja = "img2.jpg";
    var actual = $(this).css('background-image');

    if (actual.search(cat) > 0) {
      var newsrc =  actual.replace(cat, ninja);
      $(this).css('background-image', newsrc);
    }
    else {
      var newsrc =  actual.replace(ninja, cat);
      $(this).css('background-image', newsrc);
    }
  })
})
