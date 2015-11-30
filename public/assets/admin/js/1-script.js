$(window).load(function () {
    "use strict";
});

(function ($) {
    "use strict";

    function inputPlaceholders() {
        $('input, textarea').placeholder();
    }

    function init() {
        inputPlaceholders();
        Utility.detectIE();
    }

    init();

})(jQuery);