rendering
renderSessionDetailsOn: html
	self session name ifNil: [ html heading: 'New Session' ] ifNotNil: [ html heading: 'Session ' , self session name ].
	html render: self nameEditor.
	html render: self notesEditor.
	self renderProtocolsFormOn: html