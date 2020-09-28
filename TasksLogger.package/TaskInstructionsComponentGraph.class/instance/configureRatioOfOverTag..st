private - processing - tags
configureRatioOfOverTag: chart
	chart
		configurePresentationOptionsUsing: [ :options |
			options exporting buttons contextButton enabled: false.
			options legend enabled: true.
			options title text: 'Ratio of users who over tag'.
			options subtitle
				text: 'Number of users who overed the tag at least once during the execution of the task.'.
			options tooltip pointFormat: '{series.name}: <b>{point.y}</b>'.
			options plotOptions pie dataLabels format: '<b>{point.name}</b>: {point.percentage:.1f} %' ]