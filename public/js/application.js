$(document).ready(function() {

  // Makes splash page disappear
  $('#log-in').submit(function(event) {
    $('.inner').fadeOut('slow');
  });

  // Makes registration form appear
  $('#sign-up').submit(function(event) {
    $('.inner').fadeOut('slow');
  });

  // Opens question form
  $('#question-form').submit(function(event) {
    $('.inner').fadeOut('slow');
  });

  // Submits question form
  $('#sign-in-form').submit(function(event) {
    $('.inner').fadeOut('slow');
  });

  // Submits past issues
  $('#issue-form').submit(function(event) {
    $('.inner').fadeOut('slow');
  });

  $('.link').click(function(event) {
    $('.inner').fadeOut('slow');
  });
});
