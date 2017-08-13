
angular
.module("portfolio")
.factory("portfolioService", PortfolioService);

PortfolioService.$inject = ["$http", "appService"];

function PortfolioService($http, appService) {

	return {
		getPortfolioList: getPortfolioList,
		getPortfolio: getPortfolio
	}

	function getPortfolioList() {
		return $http.get(appService.getApiUrl("/portfolios"))
		.then(function(result) {
			return result.data;
		});
	}

	function getPortfolio(portfolioId) {
		return $http.get(appService.getApiUrl("/portfolios/" + portfolioId))
		.then(function(result) {
			return result.data;
		});
	}

}
