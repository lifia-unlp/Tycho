private -rendering - tags
renderRatioOfClickTagData: aDicOfCapture on: html
	| chart |
	chart := HighchartWebView forSimpleChart.
	self configureRatioOfClickedTag: chart.
	chart
		configureSeriesOf: HighchartsSeriesPie
		using: [ :series | 
			series
				name: 'Cant of users';
				data: (self dataForRatioTag: aDicOfCapture) ].
	html render: chart