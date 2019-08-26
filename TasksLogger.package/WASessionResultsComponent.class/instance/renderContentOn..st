rendering
renderContentOn: html
	html heading
		level3;
		with: 'Results'.
	self
		renderFiltersOn: html;
		renderActionsOn: html;
		renderTaskResultsOn: html