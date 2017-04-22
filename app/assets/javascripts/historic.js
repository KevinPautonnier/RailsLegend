$(window).on('load', function() {
    $(".champion_container").each(function () {
        if(elementInViewport($(this)[0])){
            $(".onViewport").each(function () {
                $(this).removeClass("onViewport");
            });
            $(this).addClass("onViewport");
            return false;
        }
    })
});
$(window).scroll(function() {
    $(".champion_container").each(function () {
        if(elementInViewport($(this)[0])){
            $(".onViewport").each(function () {
                $(this).removeClass("onViewport");
            });
            $(this).addClass("onViewport");
            return false;
        }
    });
});


function elementInViewport(el) {
    var top = el.offsetTop;
    var left = el.offsetLeft;
    var width = el.offsetWidth;
    var height = el.offsetHeight;

    while(el.offsetParent) {
        el = el.offsetParent;
        top += el.offsetTop-100;
        left += el.offsetLeft;
    }

    return (
        top >= window.pageYOffset &&
        left >= window.pageXOffset &&
        (top + height) <= (window.pageYOffset + window.innerHeight) &&
        (left + width) <= (window.pageXOffset + window.innerWidth)
    );
}
