rendering
renderMainContentOn: html
	self renderSummaryOn: html.
	html heading
		level: 3;
		with: 'Results'.
	self renderProtocolSelectorOn: html.
	html space.
	selectedProtocol ifNotNil: [ self renderSampleSelectorOn: html ].
	selectedSample ifNotNil: [ self renderTaskResultsIn: selectedSample on: html ]