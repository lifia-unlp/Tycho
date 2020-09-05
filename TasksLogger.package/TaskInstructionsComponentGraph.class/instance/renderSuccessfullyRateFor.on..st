private - rendering
renderSuccessfullyRateFor: tasksResults on: html
	| chart data |
	chart := HighchartWebView forSimpleChart.
	data := self rateOfSuccessfully: tasksResults.
	self configureRateOfSuccessfully: chart.
	chart
		configureSeriesOf: HighchartsSeriesPie
		using: [ :series |
			series innerSize: '50%'.
			series name: 'SuccessfullyRate'.
			series data: data].
		html render: chart.
	