print
participantAsJson: participant
	"Returns the participant data, the assigned protocol and the tasks that make up the protocol in JSON format"
	
	^ NeoJSONWriter toStringPretty: (self participantAsDictionary: participant)