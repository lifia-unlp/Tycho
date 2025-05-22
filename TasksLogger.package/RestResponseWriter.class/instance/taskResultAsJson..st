print
taskResultAsJson: taskResult
	"Returns the task result data (including the referenced task) in JSON format"
	
	^ NeoJSONWriter toStringPretty: (self taskResultAsDictionary: taskResult)