// user hovers over each card to see what the effect is
$(document).ready(function() {
  // first effect: red card reveals text on hover
  $(".red").hover(function() {
    var redMessage = $("<p>Hidden message, revealed!</p>");

    if (redMessage == 1) {
      $(this).remove(redMessage);
    } else {
      $(this).prepend(redMessage);
    }
  });

  $(".green").hover(function() {
    $(this).addClass('highlighted');
  });
});
