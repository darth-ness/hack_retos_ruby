$(document).ready(function () {
  $("#btn-orange").click(function() {
    $('html, body').animate({
      scrollTop: $("#orange-sect").offset().top
    }, 1000);
  });
  $("#btn-blue").click(function() {
    $('html, body').animate({
      scrollTop: $("#blue-sect").offset().top
    }, 1000);
  });
  $("#btn-yellow").click(function() {
    $('html, body').animate({
      scrollTop: $("#yellow-sect").offset().top
    }, 1000);
  });
  $("#btn-red").click(function() {
    $('html, body').animate({
      scrollTop: $("#red-sect").offset().top
    }, 1000);
  });

});
