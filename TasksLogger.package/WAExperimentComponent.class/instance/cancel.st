callbacks
cancel
	"Cancel the changes applied to the experiment under configuration.
	Restore the experiment to its original state."
	
	"self experiment: originalExperiment."
	self experiment copyFrom: originalExperiment.
	self answer: nil.
	

"
	self experimentSession protocols do: [ :protocol | self store remove: protocol ].
	self experimentSession copyFrom: originalSession.
	self store save: self experimentSession.
	self answer: nil
"