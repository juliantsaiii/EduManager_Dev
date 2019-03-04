$.StartScreen = function(){
    var plugin = this;
    var width = (window.innerWidth > 0) ? window.innerWidth : screen.width;

    plugin.init = function(){
        setTilesAreaSize();
        if (width >= 768) addMouseWheel();
        console.log(window.innerWidth);
    };

    var setTilesAreaSize = function(){
        var groups = $(".tiles-area:first .tiles-group");
        var groups2 = $(".tiles-area:last .tiles-group");
        var tileAreaWidth =0;
        var tileAreaWidth2=0;
        $.each(groups, function(i, t){
            if (width <= 768) {
                tileAreaWidth = width;
            } else {
                tileAreaWidth += $(t).outerWidth() +20;
            }
        });
        $.each(groups2, function (i, t) {
            if (width <= 768) {
                tileAreaWidth2 = width;
            } else {
                tileAreaWidth2 += $(t).outerWidth() + 20;
            }
        });
        var www;
        if (tileAreaWidth > tileAreaWidth2){ 
            www= tileAreaWidth;
        } 
        else {
            www= tileAreaWidth2;
        }
        $("#pt-main").css({
            width: www
        });
    };

    var addMouseWheel = function (){
        $("body").mousewheel(function(event, delta, deltaX, deltaY){
            var page = $(".start-screen");
            var scroll_value = delta * 50;
            page.scrollLeft(page.scrollLeft() - scroll_value);
            return false;
        });
    };

    plugin.init();
};

$.StartScreen();

$.each($('[class*=tile-]'), function(){
    var tile = $(this);
    setTimeout(function(){
        tile.css({
            opacity: 1,
            "transform": "scale(1)",
            "transition": ".3s"
        }).css("transform", false);

    }, Math.floor(Math.random()*500));
});

$(".tiles-group").animate({
    left: 0
});

$(window).on(Metro.events.resize + "-start-screen-resize", function(){
    $.StartScreen();
});