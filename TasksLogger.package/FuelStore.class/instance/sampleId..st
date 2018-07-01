retrieving
sampleId: id
	self experiments
		do: [ :exp | 
			exp samples
				do: [ :samp | 
					samp id = id
						ifTrue: [ ^ samp ] ] ].
	^ nil