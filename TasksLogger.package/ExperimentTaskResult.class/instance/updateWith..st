update
updateWith: taskResultData
	"Update task result data with new data available in the dictionary"
			
	self startTime: (taskResultData at: 'startTime').
	self ellapsedMs: (taskResultData at: 'ellapsedMs').
	self status: (taskResultData at: 'status').
	self properties: (taskResultData at: 'properties').
	self koboldReport: (taskResultData at: 'koboldReport').
	