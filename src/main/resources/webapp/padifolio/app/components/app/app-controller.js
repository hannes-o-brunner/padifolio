
angular
.module("app")
.controller("appController", AppController);

AppController.$inject = ["$state", "$stateParams", "sessionService"];

function AppController($state, $stateParams, sessionService) {

	var vm = this;

	vm.state = function() {
		return $state.current.name;
	};

	vm.params = function() {
		return JSON.stringify($stateParams);
	};

	vm.isHomeState = function() {
		return $state.current.name === "portfolios";
	};

	vm.home = function() {
		$state.go("home", {}, { reload: true });
	};

}
