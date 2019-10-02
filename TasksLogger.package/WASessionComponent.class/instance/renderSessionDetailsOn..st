rendering
renderSessionDetailsOn: html
	html heading level3 with: 'Experiment details'.
	html render: self nameEditor.
	html render: self notesEditor.
	self renderProtocolsFormOn: html