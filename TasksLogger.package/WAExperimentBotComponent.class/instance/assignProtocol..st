callbacks
assignProtocol: anExperimentProtocol
	"Assigns the given protocol to the bot under configuration. 
	As a result, the sequence of tasks that the bot must perform is reset."
			
	anExperimentProtocol ifNil: [ ^ self bot resetProtocol ].
	self bot bindProtocol: anExperimentProtocol.
	self error: nil.