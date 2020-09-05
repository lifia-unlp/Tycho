private - accessing
averageTimeElapsedByProtocol
	| dataCollection serieColumn |
	dataCollection := OrderedCollection new.
	self session protocols
		do: [ :protocol | 
			serieColumn := HighchartsSeriesColumnData new.
			serieColumn y: (protocol averageTimeElapsed / 1000).
			serieColumn name: protocol name.
			serieColumn drilldown: protocol name.
			dataCollection add: serieColumn ].
	^ dataCollection