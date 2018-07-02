rendering
renderMainContentOn: html
	self renderFileUploadBoxOn: html.
	experiment
		ifNotNil: [ html break.
			self renderExperimentSummaryOn: html ].
	error ifNotNil: [ self renderErrorOn: html ]