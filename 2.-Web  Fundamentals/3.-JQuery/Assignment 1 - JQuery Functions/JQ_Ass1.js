$(document).ready(function () {

  // click()
  $('#click_but').click(function () {
    alert("You just clicked");
  });

  // focus()


  // addClass()
  $('#addClass_but').click(function () {
    $('#addClass_obj').addClass('red');
  })

  // val()
  $('#val_but').click(function () {
    var val_value = $('#val_obj').val();
    alert(val_value);
  });

  // text()
  $('#text_but').click(function () {
    var text_value = $('#text_obj').val();
    $('#text_obj2').text(text_value);
  })

  // attr()
  $('#attr_but').click(function () {
    alert('The place holder was  ' +  $('#attr_obj').attr('placeholder'));
  })


























})
