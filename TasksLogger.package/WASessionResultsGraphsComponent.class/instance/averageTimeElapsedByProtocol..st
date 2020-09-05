private - rendering
averageTimeElapsedByProtocol: html
	| chart dataAverage |
	chart := HighchartWebView forSimpleChart.
	dataAverage := self averageTimeElapsedByProtocol.
	self configureAverageTimeElapsedByProtocol: chart.
	chart
		configureSeriesOf: HighchartsSeriesColumn
		using: [ :series | 
			series colorByPoint: true.
			series data: dataAverage ].
	html render: chart