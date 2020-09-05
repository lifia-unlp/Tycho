private - processing
addSusScoreName: aName withData: data withColor: color to: chart
	| seriesPieData |
	seriesPieData := HighchartsSeriesPieData new.
			seriesPieData y: data size.
			seriesPieData name: aName.
			seriesPieData colorIndex: color.
	^ seriesPieData.
		
	