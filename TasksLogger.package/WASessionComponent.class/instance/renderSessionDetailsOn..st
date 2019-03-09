rendering
renderSessionDetailsOn: html
	html heading level3 with: 'Session details'.
	html render: self nameEditor.
	html render: self notesEditor.
	self renderProtocolsFormOn: html