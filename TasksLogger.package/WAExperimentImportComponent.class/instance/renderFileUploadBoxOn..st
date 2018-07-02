rendering
renderFileUploadBoxOn: html
	html heading: 'Importing an experiment'.
	html form
		multipart;
		with: [ html
				tbsFormGroup: [ html label: 'File:'.
					html fileUpload callback: [ :value | self receiveFile: value ] ].
			html submitButton: 'Upload File' ]