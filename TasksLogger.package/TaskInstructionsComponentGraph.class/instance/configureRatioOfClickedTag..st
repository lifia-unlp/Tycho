private - processing - tags
configureRatioOfClickedTag: chart
	chart
		configurePresentationOptionsUsing: [ :options | 
			"options is object of HighChart class"
			options exporting buttons contextButton enabled: false.
			options legend enabled: true.
			options title text: 'Ratio of users who clicked on the tag'.
			options subtitle
				text: 'Number of users who clicked on the tag at least once during the execution of the task.'.
			options tooltip pointFormat: '{series.name}: <b>{point.y}</b>'.
			options plotOptions pie dataLabels format: '<b>{point.name}</b>: {point.percentage:.1f} %' ]