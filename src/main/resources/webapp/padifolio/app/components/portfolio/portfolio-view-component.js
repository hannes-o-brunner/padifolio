
angular
.module("portfolio")
.component("portfolioView", {
	templateUrl: "padifolio/app/components/portfolio/portfolio-view-frame.html",
	controller: PortfolioViewController,
	bindings: {
		portfolioList: "<"
	}
});

PortfolioViewController.$inject = ["$state", "$stateParams", "appService"];

function PortfolioViewController($state, $stateParams, appService) {

	var vm = this;

	vm.selectPortfolio = function(portfolio) {
		if (portfolio.id) {
			$state.go("home.portfolio", { portfolioId: portfolio.id });
		} else {
			$state.go("home");
		}
	}

}
