private - processing
configureSusScoreChart: aChart
	aChart
		configurePresentationOptionsUsing: [ :options |
			"options is object of HighChart class"
			options exporting buttons contextButton enabled: false.
			options chart styledMode: false.
			options legend enabled: true.
			options title text: 'SUS score clasification'.
			options subtitle text: 'source of the SUS score classification: <br> https://measuringu.com/interpret-sus-score/'.
			options tooltip pointFormat: '{series.name}: <b>{point.y}</b>'.
			options plotOptions pie dataLabels format: '<b>{point.name}</b>: {point.percentage:.1f} %' ]
