var defaults = {
    bgColor: '#fff',
    duration: 800,
    opacity: 0.7,
    classOveride: false
};
var ajaxLoader = {
    init:function(options){
        this.options = jQuery.extend(defaults, options);
        this.container = $("body");
    },
    show: function () {
        var overlay = $('<div></div>').css({
            'background-color': this.options.bgColor,
            'opacity': this.options.opacity,
            'position': 'absolute',
            'top': '0px',
            'left': '0px',
            'bottom': '0px',
            'right': '0px',
            'z-index': 99999
        }).addClass('ajax_overlay');
        // add an overiding class name to set new loader style
        if (this.options.classOveride) {
            overlay.addClass(this.options.classOveride);
        }
        // insert overlay and loader into DOM
        this.container.append(
            overlay.append(
                $('<div></div>').addClass('ajax_loader')
            ).fadeIn(this.options.duration)
        );
    },
    hide: function () {
        var overlay = this.container.children(".ajax_overlay");
        if (overlay.length) {
            overlay.fadeOut(this.options.classOveride, function () {
                overlay.remove();
            });
        }
    }
}
