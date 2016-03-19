(function (angular) {
    'use strict';

    var module;

    function TopBarCtrl ($scope) {
        var topbar = this;

        topbar.isOpen = false;

        topbar.config = {
            isOpen: false,
            count: 0,
            selectedDirection: 'right'
        };

        topbar.toggle = function() {
            topbar.isOpen = !topbar.isOpen;
            console.log("toggleTopBar");
        }
    }

    module = angular.module('ac.navigation');

    TopBarCtrl.$inject = [
        '$scope'
    ];

    module.controller(
        'TopBarCtrl',
        TopBarCtrl
    );
})(window.angular);