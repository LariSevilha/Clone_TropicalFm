// link

var _link = {
  back: function (link) {
    if (link.length) {
      link.click(function (e) {
        e.preventDefault();
        window.history.back(-1);
      });
    }
  },

  current: function (modifier) {
    var path = window.location.pathname.split("/");
    var url = "/" + path[1];

    $('a[href="' + path[1] + '"]').addClass(modifier);

    $('.nav-item a[href="' + url + '"]')
      .parent()
      .addClass(modifier);

    $('.mega-menu a[href="' + path[1] + '"]')
      .parent()
      .parent()
      .parent()
      .parent()
      .parent()
      .parent()
      .addClass(modifier);
  },

  prevent: function (link) {
    if (link.length) {
      link.click(function (e) {
        e.preventDefault();
      });
    }
  },
};
