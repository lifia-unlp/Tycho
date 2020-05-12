rendering
renderSessionDetailsOn: html
	html heading level3 with: 'Experiment details'.
	html render: self nameEditor.
	html render: self notesEditor.
	html heading level4 with: 'Experiment ID '.
	html render: self sessionId.
	self renderProtocolsFormOn: html