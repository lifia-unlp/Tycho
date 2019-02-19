rendering
renderMainContentOn: html
	self
		renderProtocolDetailsOn: html;
		renderWorkflowOn: html;
		renderAvailableTaskPrototypesOn: html;
		renderDeleteButtonOn: html