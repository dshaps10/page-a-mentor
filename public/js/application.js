$(document).ready(function() {

  // Makes splash page disappear
  $('#log-in').submit(function(event) {
    $('.inner').fadeOut();
  });

  // Makes registration form appear
  $('#sign-up').submit(function(event) {
    $('.inner').fadeOut();
  });

  // Opens question form
  $('#question-form').submit(function(event) {
    $('.inner').fadeOut();
  });

  // Submits question form
  $('#sign-in-form').submit(function(event) {
    $('.inner').fadeOut();
  });

  // Submits past issues
  $('#issue-form').submit(function(event) {
    $('.inner').fadeOut();
  });

  $('.link').click(function(event) {
    $('.inner').fadeOut();
  });
});
