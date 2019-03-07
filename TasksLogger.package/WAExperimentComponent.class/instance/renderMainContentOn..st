rendering
renderMainContentOn: html
	self renderExperimentDetailsOn: html.
	self renderWorkflowOn: html.
	html horizontalRule.
	self renderAvailableTaskPrototypesOn: html.
	self renderDeleteButtonOn: html