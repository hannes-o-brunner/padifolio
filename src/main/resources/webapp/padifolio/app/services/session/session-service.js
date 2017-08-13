
angular
.module("session")
.factory("sessionService", SessionService);

SessionService.$inject = ["$http", "appService"];

function SessionService($http, appService) {

	return {
		hasSession: hasSession,
		getUserName: getUserName,
		login: login,
		logout: logout
	}

	function hasSession() {
		return true;
		return !!Cookies.get("authentication");
	}

	function getUserName() {
		return "User";
		return Cookies.get("authentication");
	}

	function login(user, password) {
		var data = { user: user, password: password };
		return $http.post(appService.getApiRoot() + "/login", data)
		.then(function(result) {
			return result.data;
		});
	}

	function logout() {
		var data = { };
		return $http.post(appService.getApiRoot() + "/logout", data)
		.then(function(result) {
			return result.data;
		});
	}

}
