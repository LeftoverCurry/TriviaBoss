$(function () {
  $("div.hidden").fadeIn(1000).removeClass("hidden");
  $("button").on("click", function () {
    $("div.wrapper").fadeOut(1000).addClass("hidden");
  });
});
