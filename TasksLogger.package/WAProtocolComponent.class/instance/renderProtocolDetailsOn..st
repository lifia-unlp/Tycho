rendering
renderProtocolDetailsOn: html
	html heading: 'Experiment ' , self protocol name.
	html render: self nameEditor.
	html render: self notesEditor.