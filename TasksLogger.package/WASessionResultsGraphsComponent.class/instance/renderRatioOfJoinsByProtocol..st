private - rendering
renderRatioOfJoinsByProtocol: html
	| chart |
	chart := HighchartWebView forSimpleChart.
	self configureRatioOfJoinsByProtocolOf: chart.
	chart
		configureSeriesOf: HighchartsSeriesPie
		using: [ :series | 
			series
				name: 'Cant of executions';
				data: self dataForRatioOfJoinsByProtocol ].
	html render: chart