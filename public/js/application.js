$(document).ready(function() {

  // Makes sign in form appear
  $('#log-in').submit(function(event) {
    event.preventDefault();
    $target = $(this);
    $container = $('.inner');
    route = $target.attr('action');
    $container.fadeOut('slow');

    var ajaxRequest = $.ajax({
      method: 'GET',
      url: route,
      dataType: 'html'
    });

    ajaxRequest.done(function(response) {
      $('.splash').append(response);
    })
  });

  // Makes registration form appear
  $('#sign-up').submit(function(event) {
    event.preventDefault();
    $target = $(this);
    $container = $('.inner');
    route = $target.attr('action');
    $container.fadeOut('slow');

    var ajaxRequest = $.ajax({
      method: 'GET',
      url: route,
      dataType: 'html'
    });

    ajaxRequest.done(function(response) {
      $('.splash').append(response);
    });
  });

  // Opens question form
  $('#question-form').submit(function(event) {
    event.preventDefault();
    $target = $(this);
    $container = $('.inner');
    route = $target.attr('action');
    $container.fadeOut('slow');

    var ajaxRequest = $.ajax({
      method: 'GET',
      url: route,
      dataType: 'html'
    });

    ajaxRequest.done(function(response) {
      $('.splash').append(response);
    });
  });
});
