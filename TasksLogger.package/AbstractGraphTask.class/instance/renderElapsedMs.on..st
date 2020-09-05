private - rendering
renderElapsedMs: tasksResults on: html
	| chart data |
	chart := HighchartWebView forSimpleChart.
	data := self arrayOfElapsedMs: tasksResults.
	self configureElapsedMsChart: chart.
	chart configureSeriesOf: HighchartsSeriesColumn using: [ :series |
		series name: 'Elapsed seconds'.
		series data: data.
		 ].

	html render: chart.