function SayController($scope) {
  $scope.greeting = { text: 'Say'}
}

function DeathrayMenuController($scope) {
    $scope.menu = {text: 'Stun'};
    $scope.menuState.show = false;
    $scope.toggleMenu = function() {
        $scope.menuState.show = !$scope.menuState.show;
    };
}
