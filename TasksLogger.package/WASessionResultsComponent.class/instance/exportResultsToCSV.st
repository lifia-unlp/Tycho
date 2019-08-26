callbacks
exportResultsToCSV
	| csv |
	csv := String
		streamContents: [ :stream | 
			| writer |
			writer := NeoCSVWriter on: stream.
			writer nextPut: #(SampleId TaskName Start Duration Properties).
			self filteredProtocolSampleTaskTuples
				do: [ :each | 
					writer
						nextPut:
							{each second id.
							each third task name.
							each third startTime printString.
							(each third ellapsedMs / 1000) asFloat printString.
							(NeoJSONWriter toStringPretty: each third properties)} ] ].
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType applicationJson;
				document: csv;
				attachmentWithFileName: 'exported-experiment-results.csv' ]