private - processing
configureElapsedMsChart: aChart
	aChart
		configurePresentationOptionsUsing: [ :options |
			"options is object of HighChart class"
			options exporting buttons contextButton enabled: false.
			options title text: 'Elapsed seconds by execution'.
			options subtitle text: 'The time elapsed for each execution in the task'.
			options tooltip valueDecimals: 2.
			options xAxis type: 'number'.
			options xAxis title text: 'Experiment executions'.
			options addYAxis title text:'Elapsed seconds'.
			].