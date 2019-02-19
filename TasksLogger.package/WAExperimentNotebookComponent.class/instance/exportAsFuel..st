callbacks
exportAsFuel: anExperiment
	| blob |
	blob := FLSerializer serializeToByteArray: anExperiment.
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType applicationOctetStream;
				document: blob;
				attachmentWithFileName: 'exported-experiment-' , anExperiment name , '.fuel' ]