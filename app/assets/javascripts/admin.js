$(function () {
  var $textarea = $("textarea");
  $textarea.autosize();
  // Force repaint for CSS transition.
  document.body.offsetWidth;
  $textarea.addClass('textarea-transition');
});
