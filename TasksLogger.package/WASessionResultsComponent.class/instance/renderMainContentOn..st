rendering
renderMainContentOn: html
	self renderProtocolSelectorOn: html.
	self renderSummaryOn: html.
	self renderTaskResultsOn: html