jQuery(document).ready(function() {
  $("a.scrollto").on("click", function(e) {
    var target = this.hash;
    console.log(target);
    e.preventDefault();

    $("body").scrollTo(target, 800, {
      offset: -80,
      axis: "y",
      easing: "easeOutQuad"
    });
    //Collapse mobile menu after clicking
    if ($(".navbar-collapse").hasClass("show")) {
      $(".navbar-collapse")
        .removeClass("show")
        .addClass("collapse");
    }
  });
});
