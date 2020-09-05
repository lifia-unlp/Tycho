private - processing
configureRatioOfJoinsByProtocolOf: aChart
	aChart
		configurePresentationOptionsUsing: [ :options |
			"options is object of HighChart class"
			options exporting buttons contextButton enabled: false.
			options legend enabled: true.
			options title text: 'Ratio of Executions'.
			options subtitle text: 'Number of executions performed by protocol'.
			options tooltip pointFormat: '{series.name}: <b>{point.y}</b>'."<br>Ratio: <b>{point.percentage:.1f}%</b>"
			options plotOptions pie dataLabels format: '<b>{point.name}</b>: {point.percentage:.1f} %' ]