$(document).ready(function () {
  var items = $('li');
  $('.my-btn').on('click', function () {
    $('#my-screen').replaceWith(items);
  });
});
