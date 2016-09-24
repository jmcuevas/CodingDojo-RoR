$(document).ready(function() {
  var button_show = $('#button_show');
  var subject_div = $('#subject_div');
  var bkg_color = $('#bkg_color');
  var button_hide = $('#button_hide');
  var square1 = $('#square1');
  var square2 = $('#square2');
  var square3 = $('#square3');
  var square4 = $('#square4');
  var toggables = $('#toggables');
  var text_effects = $('#text_effects');

  // Starts the page with the subject_div hidden
  subject_div.hide();
  square1.hide();
  square2.hide();
  square3.hide();
  square4.hide();

  // When clicked the subject_div is shown
  button_show.click(function(){
    subject_div.show();
    square1.fadeIn();
    square2.slideDown();
  });

  // When clicked the background color of #subject_div is changed to blue
  bkg_color.click(function(){
    subject_div.addClass('bkg_blue');
  });

  // Toggles toggable items
  toggables.click(function () {
    square3.slideToggle();
    square4.toggle();
  })

  button_hide.click(function () {
    subject_div.hide();
  });

  // Hide #square1
  square1.click(function () {
    square1.fadeOut();
  });

  text_effects.click(function() {
    $('#subject_div h2').html('This is a new title. <br> Magic, right!?')
  })

});
