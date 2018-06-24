rendering
renderContentOn: html
	html anchor
		callback: [ self answer ];
		with: 'Back to list of sessions'.
	html horizontalRule.
	self renderSessionDetailsOn: html.
	self renderWorkflowOn: html.
	self renderCompletedTasksResultsOn: html.