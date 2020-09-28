private - access - tags
dataForRatioTag: aDicOfCapture
		| data seriesPieData |
	data := OrderedCollection new.
	aDicOfCapture keysAndValuesDo: [ :key :value |  
			seriesPieData := HighchartsSeriesPieData new.
			seriesPieData y: value.
			seriesPieData name: key.
			data add: seriesPieData ].
	^ data