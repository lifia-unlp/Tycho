private -rendering - tags
prepareRatioOfClicksTagOf: tasksResults tag: captureEventTag on: html
	| notClicked dicOfCapture propertyTag clicked |
	clicked := 0.
	notClicked := 0.
	dicOfCapture := Dictionary new.
	captureEventTag isNotEmpty
		ifTrue: [ propertyTag := self countClicksPropertyNameFor: captureEventTag.
			tasksResults
				do: [ :taskResult | 
					taskResult properties
						at: propertyTag
						ifPresent: [ :value | 
							value size > 0
								ifTrue: [ clicked := clicked + 1 ]
								ifFalse: [ notClicked := notClicked + 1 ] ]
						ifAbsent: [ notClicked := notClicked + 1 ] ].
			dicOfCapture at: 'users did not clicks tag' put: notClicked.
			dicOfCapture at: 'users clicked tag' put: clicked.
			self renderRatioOfClickTagData: dicOfCapture on: html ]