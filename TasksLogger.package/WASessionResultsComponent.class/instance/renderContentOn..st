rendering
renderContentOn: html
	html heading
		level3;
		with: 'Results'.
	self renderProtocolSelectorOn: html.
	html space.
	selectedProtocol ifNotNil: [ self renderSampleSelectorOn: html ].
	selectedSample ifNotNil: [ self renderTaskResultsIn: selectedSample on: html ]