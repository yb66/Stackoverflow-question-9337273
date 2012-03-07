(function() {

  jQuery(function($) {
    $.ajaxSetup({
      data: {
        c: 3,
        d: 4
      }
    });
    return $("#form1").submit(function() {
      var _this = this;
      console.log("ser: " + ($(this).serialize()));
      $.ajax({
        url: "/",
        data: $(this).serialize(),
        type: "POST",
        success: function(res, status, xhr) {
          return console.log("res: " + res);
        },
        error: function(xhr, status, err) {
          return console.log("failed with error: " + err);
        },
        complete: function(xhr, status) {
          return console.log("finished with status: " + status);
        }
      });
      return false;
    });
  });

}).call(this);
