private - processing
configureRateOfSuccessfully: aChart
	aChart
		configurePresentationOptionsUsing: [ :options |
			"options is object of HighChart class"
			options exporting buttons contextButton enabled: false.
			options legend enabled: true.
			options title text: 'Rate of<br>Succesfully<br>task'.
			options title align: 'center'.
			options title verticalAlign: 'middle'.
			options title y: 60.
			options tooltip pointFormat: 'cant: <b>{point.y}</b><br><b>{point.percentage:.1f}%</b>'.
			options plotOptions pie dataLabels enabled: true.
			options plotOptions pie dataLabels distance: -60.
			options plotOptions pie dataLabels style fontWeight: 'bold'.
			options plotOptions pie dataLabels style color: 'white'.
			options plotOptions pie startAngle: -90.
			options plotOptions pie endAngle: 90.
			options plotOptions pie center: #('50%' '75%').
			options plotOptions pie size: '110%'.
			
	
			
			]