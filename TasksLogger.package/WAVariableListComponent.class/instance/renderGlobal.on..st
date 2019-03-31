rendering
renderGlobal: anExperimentVariable on: aWAHtmlCanvas
	(self isReservedVariable: anExperimentVariable)
		ifTrue: [ aWAHtmlCanvas text: 'This is a reserved variable. Its value will be automatically set on demand.'  ]
		ifFalse: [ aWAHtmlCanvas text: anExperimentVariable value ]