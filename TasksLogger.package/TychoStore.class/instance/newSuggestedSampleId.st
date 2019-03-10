ids
newSuggestedSampleId
	suggestedSampleNames atEnd ifTrue: [ self generateSuggestedSampleIds ].
	^ suggestedSampleNames next