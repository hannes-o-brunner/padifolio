
angular
.module("app")
.factory("appService", AppService);

AppService.$inject = ["$state"];

function AppService($state) {

	const API_ROOT = "/api";

	var loadCount_ = 0;
	var doDebug_ = false;

	var history_ = [];

	return {
		state: state,
		isLoading: isLoading,
		setLoading: setLoading,
		doDebug: doDebug,
		setDebug: setDebug,
		getApiRoot: getApiRoot,
		getApiUrl: getApiUrl
	}

	function state() {
		return $state.current.name;
	};

	function isLoading() {
		return loadCount_ > 0;
	}

	function setLoading(isLoading) {
		loadCount_ += isLoading ? 1 : -1;
	}

	function doDebug() {
		return doDebug_;
	}

	function setDebug(doDebug) {
		doDebug_ = !!doDebug;
	}

	function getApiRoot() {
		return API_ROOT;
	}

	function getApiUrl(url) {
		return getApiRoot() + url;
	}

}
