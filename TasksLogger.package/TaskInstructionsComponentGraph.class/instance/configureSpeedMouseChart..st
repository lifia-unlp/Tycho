private - processing
configureSpeedMouseChart: aChart
	aChart
		configurePresentationOptionsUsing: [ :options |
			"options is object of HighChart class"
			options exporting buttons contextButton enabled: false.
			options title text: 'Speed of mouse'.
			options subtitle text: 'Pixels by second'.
			options tooltip valueDecimals: 2.
			options tooltip pointFormat: '<b>{point.y:.1f} px/sec</b>'.
			options xAxis type: 'number'.
			options xAxis title text: 'Experiment execution'.
			options addYAxis title text: 'Pixels/seconds'.			
			]