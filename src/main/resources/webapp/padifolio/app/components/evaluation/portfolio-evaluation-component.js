
angular
.module("evaluation")
.component("portfolioEvaluation", {
	templateUrl: "padifolio/app/components/evaluation/portfolio-evaluation-frame.html",
	controller: PortfolioEvaluationController,
	bindings: {
		portfolio: "<",
		evaluation: "<"
	}
});

PortfolioEvaluationController.$inject = ["appService"];

function PortfolioEvaluationController(appService) {

	var vm = this;

	var marketValueChartConfigObj = {
		title: {
			text: "Market Value"
		},
		chart: {
			type: "line"
		},
		xAxis: {
			categories: []
		},
		yAxis: {
			title: {
				text: "Amount in "
			}
		},
		tooltip: {
			shared: true,
			crosshairs: true
		},
		series: [{
			id: "marketValue",
			name: "Market Value",
			color: "#1E90FF",
			data: []
		}]
	};

	vm.marketValueChartConfig = function() {
		var chartConfig = marketValueChartConfigObj;
		chartConfig.title.text = "Market Value in " + vm.evaluation.refCurrency + " from " + vm.evaluation.fromDate + " to " + vm.evaluation.toDate;
		chartConfig.yAxis.title.text = "Amount in " + vm.evaluation.refCurrency;
		chartConfig.series.forEach(function(s) {
			s.data = [];
		});
		vm.evaluation.periods.forEach(function(p) {
			chartConfig.xAxis.categories.push(p.evalDate);
			chartConfig.series[0].data.push(p.marketValue);
		});
		return chartConfig;
	};

	var performanceChartConfigObj = {
		title: {
			text: "Performance"
		},
		chart: {
			type: "column"
		},
		xAxis: {
			categories: []
		},
		yAxis: {
			title: {
				text: "Performance in "
			}
		},
		tooltip: {
			shared: true,
			crosshairs: true
		},
		series: [{
			id: "performance",
			name: "Performance in Period",
			data: []
		}]
	};

	vm.performanceChartConfig = function() {
		var chartConfig = performanceChartConfigObj;
		chartConfig.title.text = "Period Performance from " + vm.evaluation.fromDate + " to " + vm.evaluation.toDate;
		chartConfig.yAxis.title.text = "Performance in %";
		chartConfig.series.forEach(function(s) {
			s.data = [];
		});
		vm.evaluation.periods.forEach(function(p) {
			chartConfig.xAxis.categories.push(p.evalDate);
			chartConfig.series[0].data.push(p.twrSpan);
		});
		return chartConfig;
	};

	var aggrPerformanceChartConfigObj = {
		title: {
			text: "Aggregated Performance"
		},
		chart: {
			type: "column"
		},
		xAxis: {
			categories: []
		},
		yAxis: {
			title: {
				text: "Performance in "
			}
		},
		tooltip: {
			shared: true,
			crosshairs: true
		},
		series: [{
			id: "performanceAggr",
			name: "Aggregated Performance",
			data: []
		}]
	};

	vm.aggrPerformanceChartConfig = function() {
		var chartConfig = aggrPerformanceChartConfigObj;
		chartConfig.title.text = "Aggregated Performance from " + vm.evaluation.fromDate + " to " + vm.evaluation.toDate;
		chartConfig.yAxis.title.text = "Performance in %";
		chartConfig.series.forEach(function(s) {
			s.data = [];
		});
		vm.evaluation.periods.forEach(function(p) {
			chartConfig.xAxis.categories.push(p.evalDate);
			chartConfig.series[0].data.push(p.twrStd);
		});
		return chartConfig;
	};

}
