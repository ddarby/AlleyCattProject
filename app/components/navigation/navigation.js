(function (angular) {
    'user strict'

    var module;


    function NavigationCtrl(
        $scope
    ) {
        var nav = this,
            toggled = false;

        nav.toggle = function() {
            toggled = !toggled;
        }
    }

    module = angular.module('ac.navigation',
        [
            'ngMaterial',
             'ngMessages'
        ]
    );

    NavigationCtrl.$inject = [
        '$scope',
        '$timeout',
        '$mdSidenav',
        '$log'
    ];

    module.controller(
        'NavigationCtrl',
        NavigationCtrl
    );

}(window.angular));