
angular
.module("portfolio")
.component("portfolioSelection", {
	templateUrl: "padifolio/app/components/portfolio/portfolio-selection-frame.html",
	controller: PortfolioSelectionController,
	bindings: {
		portfolioList: "<",
		onSelectPortfolio: "&"
	}
});

PortfolioSelectionController.$inject = [];

function PortfolioSelectionController() {

	var vm = this;

	vm.getPortfolioList = getPortfolioList;
	vm.selectPortfolio = selectPortfolio;

	function getPortfolioList() {
		return vm.portfolioList;
	}

	function selectPortfolio(portfolio) {
		vm.onSelectPortfolio({ portfolio: portfolio });
	}

}
