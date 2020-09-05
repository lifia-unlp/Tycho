private - accessing
dataForRatioOfJoinsByProtocol
	| data seriesPieData |
	data := OrderedCollection new.
	self session protocols
		do: [ :protocol | 
			seriesPieData := HighchartsSeriesPieData new.
			seriesPieData y: protocol cantJoins.
			seriesPieData name: protocol name.
			data add: seriesPieData ].
	^ data