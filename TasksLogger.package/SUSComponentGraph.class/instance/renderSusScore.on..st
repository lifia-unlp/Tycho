private -rendering
renderSusScore: tasksResults on: html
	| chart |
	chart := HighchartWebView forSimpleChart.
	self configureSusScoreChart: chart.
	chart
		configureSeriesOf: HighchartsSeriesPie
		using: [ :series | 
			series
				name: 'Count: ';
				data: (self dataOfSusScore: tasksResults on: chart) ].
	html render: chart
	