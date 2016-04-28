$(document).ready(function() {
  $("#new-account").click(function(event) {
    event.preventDefault();
    $target = $(this)
    route = $target.attr("href");
    $target.hide();

    var ajaxRequest = $.ajax({
      method: "GET",
      url: route,
      dataType: "html"
    });

    ajaxRequest.done(function(response) {
      $(".center-me").append(response);
    });
  });
});
