private - access
rateOfSuccessfully: tasksResults
	| data serie success abandon |
	data := OrderedCollection new.
	success := 0.
	abandon := 0.
	tasksResults do:[:taskResult | (taskResult atProperty:'abandoned') ifTrue:[abandon := abandon + 1] ifFalse:[ (taskResult atProperty:'successful') ifTrue: [ success := success + 1 ] ] ].
	serie := HighchartsSeriesPieData new.
	serie name: 'Success'.
	serie y: success.
	data add:serie.
	serie := HighchartsSeriesPieData new.
	serie name: 'Abandon'.
	serie y: abandon.
	data add:serie.
	^ data.