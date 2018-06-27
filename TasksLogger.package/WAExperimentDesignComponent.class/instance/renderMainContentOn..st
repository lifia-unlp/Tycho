rendering
renderMainContentOn: html
	html
		tbsContainer: [ self renderDesignDetailsOn: html.
			self renderWorkflowOn: html.
			self renderAvailableTaskPrototypesOn: html ]