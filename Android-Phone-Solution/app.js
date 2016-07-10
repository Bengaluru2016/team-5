'use strict';

(function() {
    var app = {
        data: {}
    };

    var bootstrap = function() {
        $(function() {
            app.mobileApp = new kendo.mobile.Application(document.body, {
                transition: 'slide',
                skin: 'nova',
                initial: 'components/home/view.html'
            });
        });
    };

    if (window.cordova) {
        document.addEventListener('deviceready', function() {
            if (navigator && navigator.splashscreen) {
                navigator.splashscreen.hide();
            }
            bootstrap();
        }, false);
    } else {
        bootstrap();
    }

    app.keepActiveState = function _keepActiveState(item) {
        var currentItem = item;
        $('#navigation-container li.active').removeClass('active');
        currentItem.addClass('active');
    };

    window.app = app;

    app.isOnline = function() {
        if (!navigator || !navigator.connection) {
            return true;
        } else {
            return navigator.connection.type !== 'none';
        }
    };

    app.openLink = function(url) {
        if (url.substring(0, 4) === 'geo:' && device.platform === 'iOS') {
            url = 'http://maps.apple.com/?ll=' + url.substring(4, url.length);
        }

        window.open(url, '_system');
        if (window.event) {
            window.event.preventDefault && window.event.preventDefault();
            window.event.returnValue = false;
        }
    };

    app.onShowMore = function() {
        var navigation_show_more_view = $("#navigation-show-more-view");

        navigation_show_more_view.find("ul").html($("#navigation-container-more").html());

        navigation_show_more_view.find("ul a").each(function(index) {
            var icon = '<span class="km-icon km-' + $(this).data('icon') + '"></span>',
                text = '<span class="km-text">' + $(this).text() + '</span>';

            $(this).html(icon + text).addClass('km-listview-link').attr('data-role', 'listview-link').wrap("<li></li>");
        });

        $("#more-view-back").off("click").on("click", function() {
            $("#navigation-show-more-view").hide();
        })
    };

    app.afterShowMore = function() {
        var navigation_show_more_view = $("#navigation-show-more-view");

        navigation_show_more_view.find("li").off('click touchend').on('click touchend', function() {
            navigation_show_more_view.hide();
            $('.km-tabstrip .km-state-active').removeClass('km-state-active');
        });
    };

    app.clickMore = function(e) {
        app.onShowMore();
        $("#navigation-show-more-view").show();
        app.afterShowMore();
    };
}());
