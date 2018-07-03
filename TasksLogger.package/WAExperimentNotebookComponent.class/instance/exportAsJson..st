callbacks
exportAsJson: anExperiment
	| json |
	json := JsonExportWriter new experimentAsJson: anExperiment .
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType applicationJson;
				document: json;
				attachmentWithFileName: 'exported-experiment-' , anExperiment id , '.json' ]