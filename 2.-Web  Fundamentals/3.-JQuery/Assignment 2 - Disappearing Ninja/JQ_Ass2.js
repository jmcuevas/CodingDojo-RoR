// Jose M. Cuevas
// September 23rd, 2016
// jQuery Assignment 2 - Disappearing Ninja

$(document).ready(function() {
  var item = $('img.ninja_image');
  var restore_button = $('#restore_img');

  item.click(function() {
    $(this).hide();
  });

  restore_button.click(function() {
    item.show()
  });
});
