retrieving
sampleId: id
	"returns the sample with the given id"

	self experiments
		do: [ :exp | 
			exp samples
				do: [ :samp | 
					samp id = id
						ifTrue: [ ^ samp ] ] ].
	^ nil