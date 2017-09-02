
angular
.module("app", ["ui.router", "ngSanitize", "highcharts-ng", "session", "portfolio", "evaluation"])
.config(AppConfig);

AppConfig.$inject = ["$urlRouterProvider", "$stateProvider"];

function AppConfig($urlRouterProvider, $stateProvider) {

	var homeState = {
		name: "home",
		url: "/",
		component: "portfolioView",
		resolve: {
//			authentication: authentication,
			portfolioList: ["portfolioService", function(portfolioService) {
				return portfolioService.getPortfolioList();
			}]
		}
	};

	var portfolioState = {
		name: "home.portfolio",
		url: "^/portfolio/{portfolioId:int}",
		component: "portfolioEvaluation",
		resolve: {
//			authentication: authentication,
			portfolio: ["$stateParams", "appService", "portfolioService", function($stateParams, appService, portfolioService) {
				var params = $stateParams;
				var portfolioId = params.portfolioId;
				appService.setLoading(true);
				return portfolioService.getPortfolio(portfolioId).then(function(portfolio){
					appService.setLoading(false);
					return portfolio;
				});
			}],
			evaluation: ["$stateParams", "appService", "evaluationService", function($stateParams, appService, evaluationService) {
				var params = $stateParams;
				var portfolioId = params.portfolioId;
				appService.setLoading(true);
				return evaluationService.getEvaluation(portfolioId, "CHF", "2006-12-31", "2016-12-31").then(function(evaluation){
					appService.setLoading(false);
					return evaluation;
				});
			}]
		}
	};

	$stateProvider.state(homeState);
	$stateProvider.state(portfolioState);
	$urlRouterProvider.otherwise("/");

}
