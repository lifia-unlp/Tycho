private - processing - tags
configureArrivalTimeToTagOn: chart
		chart
		configurePresentationOptionsUsing: [ :options |
			"options is object of HighChart class"
			options exporting buttons contextButton enabled: false.
			options title text: 'Arrival time to tag'.
			options subtitle text: 'Time of arrival at the tag for the first time'.
			options tooltip valueDecimals: 2.
			options tooltip pointFormat: '<b>{point.y} Seconds</b>'.
			options xAxis type: 'number'.
			options xAxis title text: 'Experiment execution'.
			options addYAxis title text: 'Time of arrival at tag in seconds'.			
			]