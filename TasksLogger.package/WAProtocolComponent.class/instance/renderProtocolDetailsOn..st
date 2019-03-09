rendering
renderProtocolDetailsOn: html
	html heading level3 with: 'Protocol details'.
	html render: self nameEditor.
	html render: self notesEditor