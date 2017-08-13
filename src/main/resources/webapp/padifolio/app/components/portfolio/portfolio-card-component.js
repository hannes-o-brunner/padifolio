
angular
.module("portfolio")
.component("portfolioCard", {
	templateUrl: "padifolio/app/components/portfolio/portfolio-card-frame.html",
	controller: PortfolioCardController,
	bindings: {
		portfolio: "<",
		onSelectPortfolio: "&"
	}
});

PortfolioCardController.$inject = ["appService"];

function PortfolioCardController(appService) {

	var vm = this;

	vm.selectPortfolio = selectPortfolio;

	function selectPortfolio(portfolio) {
		vm.onSelectPortfolio({ portfolio: portfolio });
	}

}
