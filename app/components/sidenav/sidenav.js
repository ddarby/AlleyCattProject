(function (angular) {
    'user strict'

    var module;


    function SideNavCtrl(
        $scope,
        $timeout,
        $mdSidenav,
        $log
    ) {
        var sidenav = this,
            toggled = false;

        $scope.toggle = function(toggled) {
            toggled = !toggled;
            return $mdSidenav("left").toggle().then(
                function () {
                    $log.debug("toggle LEFT is done.");
                }
            );
        };

        $scope.close = function() {
            return $mdSidenav('left').close().then(
                function() {
                    $log.debug("close LEFT is done");
                }
            );
        };

        $scope.isOpenRight = function() {
            return $mdSidenav('left').isOpen();
        };
    }

    module = angular.module('ac.navigation');

    SideNavCtrl.$inject = [
        '$scope',
        '$timeout',
        '$mdSidenav',
        '$log'
    ];

    module.controller(
        'SideNavCtrl',
        SideNavCtrl
    );

}(window.angular));