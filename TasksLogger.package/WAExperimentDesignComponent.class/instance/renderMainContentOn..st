rendering
renderMainContentOn: html
	self renderDesignDetailsOn: html.
	self renderWorkflowOn: html.
	self renderAvailableTaskPrototypesOn: html.
	self renderDeleteButtonOn: html