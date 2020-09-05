private - processing
addSusResponsesSeriesNamed: aName withData: data withColor: color to: chart

	chart
		configureSeriesOf: HighchartsSeriesBar
		using: [ :series | 
			series
				name: aName;
				color: color;
				data: data
			]