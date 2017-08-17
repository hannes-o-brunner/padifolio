
Wicket.Event.add(window, "load", function(event) {
	Highcharts.setOptions({
			chart: {
					style: {
							fontFamily: '"Open Sans", sans-serif, Arial',
							fontSize: '12px'
					}
			},
			lang: {
					decimalPoint: ',',
					thousandsSep: '.',
					months: ['Januar', 'Februar', 'Marz', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'],
					shortMonths: ['Jan', 'Feb', 'Mar', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug', 'Sep', 'Okt', 'Nov', 'Dez'],
					weekdays: ['Sonntag', 'Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samstag'],
					drillUpText: '◁ zurück zu {series.name}'
			}
	});
	_b2f5a38d94c34bf496b90f68f080022fPercents = true;
	_b2f5a38d94c34bf496b90f68f080022f = new Highcharts.Chart({
			chart: {
					renderTo: '_b2f5a38d94c34bf496b90f68f080022fContainer',
					type: 'heatmap',
					backgroundColor: null,
					borderColor: null,
					borderRadius: 0,
					plotBorderColor: '#E0E0E0',
					plotBorderWidth: 1
			},
			credits: {
					text: 'justETF.com',
					href: 'https://www.justetf.com/ch/'
			},
			title: {
					text: null
			},
			scrollbar: {
					enabled: false
			},
			yAxis: {
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
			xAxis: {},
			plotOptions: {
					series: {
							point: {
									events: {}
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
							var v = _b2f5a38d94c34bf496b90f68f080022fPercents ? Highcharts.numberFormat(this.point.value, 2) + '%' : Highcharts.numberFormat(this.point.value, 2);
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
					min: -10,
					max: 10
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
			xAxis: {
					tickColor: '#B0B0B0',
					lineColor: '#B0B0B0'
			},
			series: [],
			exporting: {
					enabled: false
			}
	});
	$('#_b2f5a38d94c34bf496b90f68f080022fContainer').show();
	$('#_b2f5a38d94c34bf496b90f68f080022fNodata').hide();
	_b2f5a38d94c34bf496b90f68f080022f.xAxis[0].setCategories(['Jan', 'Feb', 'Mrz', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug', 'Sep', 'Okt', 'Nov', 'Dez']);
	_b2f5a38d94c34bf496b90f68f080022f.yAxis[0].setCategories(['2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017']);
	_b2f5a38d94c34bf496b90f68f080022f.addSeries({
			name: 'hData',
			borderWidth: 1,
			data: [{
					x: 0,
					y: 0,
					value: null
			}, {
					x: 1,
					y: 0,
					value: 7.406253246078753
			}, {
					x: 2,
					y: 0,
					value: 5.705996131528046
			}, {
					x: 3,
					y: 0,
					value: 3.888380603842645
			}, {
					x: 4,
					y: 0,
					value: -0.5372082782915011
			}, {
					x: 5,
					y: 0,
					value: -12.086063396493707
			}, {
					x: 6,
					y: 0,
					value: 2.9005942189545664
			}, {
					x: 7,
					y: 0,
					value: -6.861113829891363
			}, {
					x: 8,
					y: 0,
					value: 7.849936948297609
			}, {
					x: 9,
					y: 0,
					value: 8.02884146935594
			}, {
					x: 10,
					y: 0,
					value: 0.8207810949760974
			}, {
					x: 11,
					y: 0,
					value: -1.9323671497584516
			}, {
					x: 0,
					y: 1,
					value: 3.5212552453931734
			}, {
					x: 1,
					y: 1,
					value: 1.6214310891786932
			}, {
					x: 2,
					y: 1,
					value: -1.8730489073881307
			}, {
					x: 3,
					y: 1,
					value: -2.7836691410392245
			}, {
					x: 4,
					y: 1,
					value: -2.654304154167808
			}, {
					x: 5,
					y: 1,
					value: -4.0806798020356805
			}, {
					x: 6,
					y: 1,
					value: -2.5603582554517113
			}, {
					x: 7,
					y: 1,
					value: -4.2162054151263835
			}, {
					x: 8,
					y: 1,
					value: 6.529675602378204
			}, {
					x: 9,
					y: 1,
					value: 6.579849211788891
			}, {
					x: 10,
					y: 1,
					value: 2.269177767570052
			}, {
					x: 11,
					y: 1,
					value: 1.9673014732303429
			}, {
					x: 0,
					y: 2,
					value: 5.4620738260946045
			}, {
					x: 1,
					y: 2,
					value: 4.318770361707469
			}, {
					x: 2,
					y: 2,
					value: 5.661434977578472
			}, {
					x: 3,
					y: 2,
					value: -0.2955665024630405
			}, {
					x: 4,
					y: 2,
					value: -1.1781696564305388
			}, {
					x: 5,
					y: 2,
					value: 2.25367279440043
			}, {
					x: 6,
					y: 2,
					value: 3.415074469685564
			}, {
					x: 7,
					y: 2,
					value: 2.29851614780332
			}, {
					x: 8,
					y: 2,
					value: -0.7465870307167166
			}, {
					x: 9,
					y: 2,
					value: -5.981803854144275
			}, {
					x: 10,
					y: 2,
					value: 1.2267601341054535
			}, {
					x: 11,
					y: 2,
					value: -2.0248400451637116
			}, {
					x: 0,
					y: 3,
					value: 2.1819299323909025
			}, {
					x: 1,
					y: 3,
					value: 2.5263157894736876
			}, {
					x: 2,
					y: 3,
					value: 5.3754766793780995
			}, {
					x: 3,
					y: 3,
					value: 0.772496346301077
			}, {
					x: 4,
					y: 3,
					value: 5.3936464088397695
			}, {
					x: 5,
					y: 3,
					value: -3.459799488893256
			}, {
					x: 6,
					y: 3,
					value: 4.4933143283784505
			}, {
					x: 7,
					y: 3,
					value: -0.09743423189345624
			}, {
					x: 8,
					y: 3,
					value: 1.8985695708712447
			}, {
					x: 9,
					y: 3,
					value: 4.843032159264937
			}, {
					x: 10,
					y: 3,
					value: 3.408191832511709
			}, {
					x: 11,
					y: 3,
					value: 1.4654817256194441
			}, {
					x: 0,
					y: 4,
					value: -0.40603248259861724
			}, {
					x: 1,
					y: 4,
					value: 2.283051834595229
			}, {
					x: 2,
					y: 4,
					value: -2.1865391185514227
			}, {
					x: 3,
					y: 4,
					value: -0.7684247293049173
			}, {
					x: 4,
					y: 4,
					value: 6.388595564941912
			}, {
					x: 5,
					y: 4,
					value: 2.2608216156603245
			}, {
					x: 6,
					y: 4,
					value: 3.35400377460231
			}, {
					x: 7,
					y: 4,
					value: 5.613815411905887
			}, {
					x: 8,
					y: 4,
					value: 3.9964432149385054
			}, {
					x: 9,
					y: 4,
					value: 3.192095762872893
			}, {
					x: 10,
					y: 4,
					value: 4.3868532498618995
			}, {
					x: 11,
					y: 4,
					value: 0.4497949464214779
			}, {
					x: 0,
					y: 5,
					value: -8.424426006409414
			}, {
					x: 1,
					y: 5,
					value: 9.525407478427606
			}, {
					x: 2,
					y: 5,
					value: 0.341401496914262
			}, {
					x: 3,
					y: 5,
					value: -2.0676117775354497
			}, {
					x: 4,
					y: 5,
					value: 3.0956304841655236
			}, {
					x: 5,
					y: 5,
					value: -3.6766611941588256
			}, {
					x: 6,
					y: 5,
					value: 8.04664723032069
			}, {
					x: 7,
					y: 5,
					value: -6.534102702478306
			}, {
					x: 8,
					y: 5,
					value: -1.2524983344436968
			}, {
					x: 9,
					y: 5,
					value: 12.93122835424818
			}, {
					x: 10,
					y: 5,
					value: 4.679783335988508
			}, {
					x: 11,
					y: 5,
					value: -4.900506030514018
			}, {
					x: 0,
					y: 6,
					value: -4.4488897779555785
			}, {
					x: 1,
					y: 6,
					value: -3.4040949629443595
			}, {
					x: 2,
					y: 6,
					value: 2.2366710013004054
			}, {
					x: 3,
					y: 6,
					value: -2.8364283897227227
			}, {
					x: 4,
					y: 6,
					value: 7.291530305013749
			}, {
					x: 5,
					y: 6,
					value: -3.452903855539291
			}, {
					x: 6,
					y: 6,
					value: 6.558827246303567
			}, {
					x: 7,
					y: 6,
					value: 2.095192915876032
			}, {
					x: 8,
					y: 6,
					value: 1.1809804073414476
			}, {
					x: 9,
					y: 6,
					value: -0.09949867972904869
			}, {
					x: 10,
					y: 6,
					value: 3.141160697184442
			}, {
					x: 11,
					y: 6,
					value: 1.4113277623027054
			}, {
					x: 0,
					y: 7,
					value: 2.4354513825306734
			}, {
					x: 1,
					y: 7,
					value: 5.666785841973554
			}, {
					x: 2,
					y: 7,
					value: 1.5801048891896485
			}, {
					x: 3,
					y: 7,
					value: 1.7453867164079595
			}, {
					x: 4,
					y: 7,
					value: 1.7187193085837826
			}, {
					x: 5,
					y: 7,
					value: -3.7559138746741216
			}, {
					x: 6,
					y: 7,
					value: 5.313670411985005
			}, {
					x: 7,
					y: 7,
					value: 1.55
			}, {
					x: 8,
					y: 7,
					value: null
			}, {
					x: 9,
					y: 7,
					value: null
			}, {
					x: 10,
					y: 7,
					value: null
			}, {
					x: 11,
					y: 7,
					value: null
			}],
			dataLabels: {
					enabled: true,
					color: 'black',
					format: '{point.value:.1f}',
					style: {
							fontWeight: 'normal',
							textShadow: 'none',
							HcTextStroke: null
					}
			}
	}, false);
	_b2f5a38d94c34bf496b90f68f080022f.xAxis[0].update({
			min: 0
	}, false);
	_b2f5a38d94c34bf496b90f68f080022f.redraw();;
});
