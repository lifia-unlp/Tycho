private - processing
configureAverageTimeElapsedByProtocol: aChart
	aChart
		configurePresentationOptionsUsing: [ :options | 
			"options is object of HighChart class"
			options exporting buttons contextButton enabled: false.
			options legend enabled: false.
			options title text: 'Average time elapsed in execution'.
			options subtitle text: 'Average time of all executions by protocol'.
			options tooltip pointFormat: '<b>{point.y:.2f} sec</b>'.
			options plotOptions series dataLabels enabled: true.
			options plotOptions series dataLabels format: '{point.y:.2f} sec'.
			options xAxis type: 'category'.
			options addYAxis title text: 'Time elapsed in seconds']