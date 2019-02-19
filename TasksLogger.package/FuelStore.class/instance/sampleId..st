retrieving
sampleId: id
	"returns the sample with the given id"

	self protocols
		do: [ :exp | 
			exp samples
				do: [ :samp | 
					samp id = id
						ifTrue: [ ^ samp ] ] ].
	^ nil