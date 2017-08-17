
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
		credits: {
			text: 'Hannes Brunner',
			href: 'http://www.hannes-brunner.ch:9001/index.html'
		},
		chart: {
			type: "line",
			style: {
				fontFamily: '"Open Sans", sans-serif, Arial',
				fontSize: '10px'
			}
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
		chartConfig.yAxis.title.text = "Value in " + vm.evaluation.refCurrency;
		chartConfig.series.forEach(function(s) {
			s.data = [];
		});
		vm.evaluation.periods.filter(function(p){ return !p.segment; }).forEach(function(p) {
			chartConfig.xAxis.categories.push(p.evalDate);
			chartConfig.series[0].data.push(p.marketValue);
		});
		return chartConfig;
	};

	var segmentChartConfigObj = {
		title: {
			text: "Segmentation"
		},
		credits: {
			text: 'Hannes Brunner',
			href: 'http://www.hannes-brunner.ch:9001/index.html'
		},
		chart: {
			type: "area",
			style: {
				fontFamily: '"Open Sans", sans-serif, Arial',
				fontSize: '10px'
			}
		},
		xAxis: {
			categories: []
		},
		yAxis: {
			title: {
				text: "Percent"
			}
		},
		tooltip: {
			pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.percentage:.1f}%</b> ({point.y:,.0f} CHF)<br/>',
			split: true
		},
    plotOptions: {
			area: {
				stacking: 'percent',
				lineColor: '#ffffff',
				lineWidth: 1,
				marker: {
					lineWidth: 1,
					lineColor: '#ffffff'
				}
			}
		},
		series: [{
			name: "Other",
			data: []
		},{
			name: "Alternative Investments",
			data: []
		},{
			name: "Private Equity",
			data: []
		},{
			name: "Real Estate",
			data: []
		},{
			name: "Equities",
			data: []
		},{
			name: "Fixed Income",
			data: []
		},{
			name: "Cash",
			data: []
		}]
	};

	vm.segmentChartConfig = function() {
		var chartConfig = segmentChartConfigObj;
		chartConfig.series.forEach(function(s) {
			s.data = [];
		});
		vm.evaluation.periods.forEach(function(p) {
			if (!p.segment) {
				chartConfig.xAxis.categories.push(p.evalDate);
			} else {
				chartConfig.series.forEach(function(s, i) {
					if (p.segment === s.name) {
						chartConfig.series[i].data.push(p.marketValue);
					}
				});
			}
		});
		return chartConfig;
	};

	var contributionChartConfigObj = {
		title: {
			text: "Performance per Period"
		},
		credits: {
			text: 'Hannes Brunner',
			href: 'http://www.hannes-brunner.ch:9001/index.html'
		},
		chart: {
			type: "heatmap",
			style: {
				fontFamily: '"Open Sans", sans-serif, Arial',
				fontSize: '10px'
			}
		},
		scrollbar: {
			enabled: false
		},
		lang: {
			decimalPoint: '.',
			thousandsSep: "'"
		},
		xAxis: {
			categories: [],
			tickColor: '#B0B0B0',
			lineColor: '#B0B0B0'
		},
		yAxis: {
			categories: ["Cash", "Fixed Income", "Equities", "Real Estate", "Private Equity", "Alternative Investments", "Other"],
			title: null,
			labels: {
				formatter: function() {
					var s = this.value;
					if (s.length > 28) {
						s = s.substring(0, 28) + '...';
					}
					return s;
				}
			}
		},
		legend: {
			align: 'right',
			layout: 'vertical',
			margin: 0,
			verticalAlign: 'top',
			y: 0,
			symbolHeight: 200,
			enabled: true
		},
		tooltip: {
			shared: false,
			formatter: function() {
				var x = this.series.xAxis.categories[this.point.x];
				var y = this.series.yAxis.categories[this.point.y];
				var v = Highcharts.numberFormat(this.point.value, 2) + '%';
				var s = y + '<br/>' + x + '<br/><strong>' + v + '</strong>';
				return s;
			}
		},
		colorAxis: {
			stops: [
				[0, '#b92626'],
				[0.5, '#ffffff'],
				[1, '#b4c84c']
			],
			min: -0.1,
			max: 0.1
		},
		plotOptions: {
			heatmap: {
				borderColor: '#B0B0B0',
				states: {
					hover: {
						color: '#c4e2f4'
					}
				}
			}
		},
		series: [{
			name: "hData",
			borderWidth: 1,
			data: []
		}]
	};

	var segmentMap = {
		"Cash": 0,
		"Fixed Income": 1,
		"Equities": 2,
		"Real Estate": 3,
		"Private Equity": 4,
		"Alternative Investments": 5,
		"Other": 6
	};

	vm.contributionChartConfig = function() {
		var chartConfig = contributionChartConfigObj;
		chartConfig.title.text = "Monthly Performance Contribution";
		chartConfig.series.forEach(function(s) {
			s.data = [];
		});
		var x = -1;
		vm.evaluation.periods.forEach(function(p) {
			if (!p.segment) {
				chartConfig.xAxis.categories.push(p.evalDate);
				x += 1;
			} else {
				chartConfig.series[0].data.push({
					x: x,
					y: segmentMap[p.segment],
					value: p.twrPrevDate
				});
			}
		});
		console.log("aggrChartConfig:\n" + JSON.stringify(chartConfig, null, 2))
		return chartConfig;
	};

}
