

$('document').ready(function() {
  $('form.user_form').submit(function() {
    var firstName = $('.user_form input[name="first_name"]').val();
    var lastName = $('.user_form input[name="last_name"]').val();
    var description = $('.user_form textarea[name="description"]').val();
    createContactCard(firstName, lastName, description);
    var firstName = $('.user_form input[name="first_name"]').val("");
    var lastName = $('.user_form input[name="last_name"]').val("");
    var description = $('.user_form textarea[name="description"]').val("");
    return false;
  });

  function createContactCard(fn, ln, dc) {
    $('#directory').append('<div class="contact_card"><div class="contact_card_front"><h1>' + fn + " " + ln +'</h1><p>Click for description</p></div><div class="contact_card_back">' + dc + '</div></div>');
  }

  $('#directory').on("click", ".contact_card", function(){
    $(this).find('.contact_card_front').toggle();
    $(this).find('.contact_card_back').toggle();
  });
})
