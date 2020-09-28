private -rendering - tags
renderRatioOfOverTagData: aDicOfCapture on: html
	| chart |
	chart := HighchartWebView forSimpleChart.
	self configureRatioOfOverTag: chart.
	chart
		configureSeriesOf: HighchartsSeriesPie
		using: [ :series | 
			series
				name: 'Cant of users';
				data: (self dataForRatioTag: aDicOfCapture) ].
	html render: chart