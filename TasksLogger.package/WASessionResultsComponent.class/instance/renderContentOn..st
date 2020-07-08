rendering
renderContentOn: html
	html heading
		level3;
		with: 'Results'.
	self
		renderSummaryJoinsOn: html;
		renderFiltersOn: html;
		renderActionsOn: html;
		renderTaskResultsOn: html