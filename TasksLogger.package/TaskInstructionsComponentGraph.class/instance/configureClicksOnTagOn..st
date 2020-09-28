private - processing - tags
configureClicksOnTagOn: chart
		chart
		configurePresentationOptionsUsing: [ :options |
			"options is object of HighChart class"
			options exporting buttons contextButton enabled: false.
			options title text: 'Number of clicks'.
			options subtitle text: 'number of clicks of users who clicked on the tag at least once'.
			options tooltip pointFormat: '<b>{point.y} clicks</b>'.
			options xAxis type: 'number'.
			options xAxis title text: 'Experiment execution'.
			options addYAxis title text: 'Number of clicks'.			
			]