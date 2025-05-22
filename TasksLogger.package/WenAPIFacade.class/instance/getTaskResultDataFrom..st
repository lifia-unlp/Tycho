store
getTaskResultDataFrom: payload
	| result modelFromClient |
	result:= Dictionary new.
	modelFromClient := payload at: #model.
	"result at: 'startTime' put: (self dateAndTimeFromString: (modelFromClient at: 'startTime'))."
	result at: 'startTime' put: (DateAndTime readFrom: (modelFromClient at: 'startTime') readStream).
	result at: 'ellapsedMs' put: (modelFromClient at: 'ellapsedMs').
	result at: 'status' put: (modelFromClient at: 'status' ifAbsent: 'completed').
	modelFromClient removeKey: 'ellapsedMs'.
	modelFromClient removeKey: 'startTime'.
	modelFromClient removeKey: 'id' ifAbsent: [].
	modelFromClient removeKey: 'status' ifAbsent: [].
	result at: 'properties' put: modelFromClient.
	result at: 'koboldReport' put: (payload at: #koboldEvents ifAbsent: [nil]).

	^ result