rendering
renderGlobal: anExperimentVariable on: aWAHtmlCanvas
	(self isReservedVariable: anExperimentVariable)
		ifTrue: [ aWAHtmlCanvas
				text: 'This is a reserved variable. Its value will be automatically set on demand.' ]
		ifFalse: [ editedVariable = anExperimentVariable
				ifTrue: [ self renderEditGlobal: anExperimentVariable on: aWAHtmlCanvas ]
				ifFalse: [ aWAHtmlCanvas text: anExperimentVariable value.
					aWAHtmlCanvas space.
					aWAHtmlCanvas anchor
						callback: [ self edit: anExperimentVariable ];
						with: [ aWAHtmlCanvas tbsGlyphIcon iconPencil ] ] ]