executing
executeBy: anExperimentParticipant
	"Executes a protocol task running a sequence of programmed instructions."
			
	self instructions do: [ :instruction | instruction executeBy: anExperimentParticipant ]