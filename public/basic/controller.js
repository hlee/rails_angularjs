function SayController($scope) {
  $scope.greeting = { text: 'Say'}
}

function CartController($scope) {
    $scope.items = [
    {title: 'Paint pots', quantity: 8, price: 3.95},
    {title: 'Polka dots', quantity: 17, price: 12.95},
    {title: 'Pebbles', quantity: 5, price: 6.95}
    ];

    $scope.remove = function(index) {
        $scope.items.splice(index, 1);
    }
}

function DeathrayMenuController($scope) {
    $scope.menu = {text: 'Stun'};
    $scope.menuState.show = false;
    $scope.toggleMenu = function() {
        $scope.menuState.show = !$scope.menuState.show;
    };
    // death ray functions left as exercise to reader
}
