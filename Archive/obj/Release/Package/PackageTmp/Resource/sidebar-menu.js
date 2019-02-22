(function ($) {
  $.fn.sidebarMenu = function (options) {
    options = $.extend({}, $.fn.sidebarMenu.defaults, options || {});
    var target = $(this);
    //target.addClass('nav');
    //target.addClass('nav-list');
    if (options.data) {
      init(target, options.data);
    }
    else {
      if (!options.url) return;
      $.getJSON(options.url, options.param, function (data) {
        init(target, data);
      });
    }
    //var url = window.location.pathname;
    //menu = target.find("[href='" + url + "']");
    //menu.parent().addClass('active');
    //menu.parent().parentsUntil('.nav-list', 'li').addClass('active').addClass('open');
    function init(target, data) {
      $.each(data, function (i, item) {
        var li = $('<li></li>');
        var a = $('<a></a>');
        var icon = $('<i></i>');
        //icon.addClass('glyphicon');
        icon.addClass(item.icon);
        var text = $('<span></span>');
        text.addClass('nav-label').text(item.text);
        a.append(icon);
        a.append(text);
        console.log(item);
        if (item.menus&&item.menus.length>0) {
          a.attr('href', '#');
          a.addClass('');
          var arrow = $('<span></span>');
          arrow.addClass('fa').addClass('arrow');
          a.append(arrow);
          li.append(a);
          var menus = $('<ul aria-expanded="false"></ul>');
          menus.addClass('nav').addClass('nav-second-level').addClass('collapse');
          init(menus, item.menus);
          li.append(menus);
        }
        else {
            var href = item.url;
            a.addClass('J_menuItem');
          a.attr('href', href);
          //if (item.istab)
          //  a.attr('href', href);
          //else {
          //  a.attr('href', item.url);
          //  a.attr('title', item.text);
          //  a.attr('target', '_blank')
          //}
          li.append(a);
        }
        //target.append(li);
      });
    }
  }
 
  $.fn.sidebarMenu.defaults = {
    url: null,
    param: null,
    data: null
  };
})(jQuery);