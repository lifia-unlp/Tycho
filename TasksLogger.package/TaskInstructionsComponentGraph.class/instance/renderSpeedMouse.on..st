private - rendering
renderSpeedMouse: tasksResults on: html
	| chart data |
		(tasksResults anySatisfy: [:t | (t atProperty:'captureDistance') not])  ifFalse:[
	chart := HighchartWebView forSimpleChart.
	data := self arrayOfSpeedMouse: tasksResults.
	self configureSpeedMouseChart: chart.
	chart configureSeriesOf: HighchartsSeriesColumn using: [ :series |
		series color: '#FF9655'.
		series name: 'Pixels by second'.
		series data: data.
		 ].
	html render: chart.
	]