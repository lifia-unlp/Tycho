private
generateSuggestedSampleIds
	| ids |
	ids := OrderedCollection new.
	self mascotNames shuffled
		do: [ :mascot | self colorNames shuffled do: [ :color | ids add: color , mascot ] ].
	ids shuffled do: [ :each | suggestedSampleNames nextPut: each ]