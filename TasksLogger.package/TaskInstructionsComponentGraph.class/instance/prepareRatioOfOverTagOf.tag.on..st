private -rendering - tags
prepareRatioOfOverTagOf: tasksResults tag: captureEventTag on: html
	| propertyTag dicCantOvers dicOfOverTagInteraction notOver over |
	over := 0.
	notOver := 0.
	dicOfOverTagInteraction := Dictionary new.
	dicCantOvers := Dictionary new.
	dicCantOvers at: 0 put: 0.
	captureEventTag isNotEmpty
		ifTrue: [ propertyTag := self overTagPropertyNameFor: captureEventTag.
			tasksResults
				do: [ :taskResult | 
					taskResult properties
						at: propertyTag
						ifPresent: [ :value | 
							value > 0
								ifTrue: [ over := over + 1 ]
								ifFalse: [ notOver := notOver + 1 ] ]
						ifAbsent: [ notOver := notOver + 1 ] ].
			dicOfOverTagInteraction at: 'users over tag' put: over.
			dicOfOverTagInteraction at: 'users did not over tag' put: notOver.
			self renderRatioOfOverTagData: dicOfOverTagInteraction on: html.
			 ]