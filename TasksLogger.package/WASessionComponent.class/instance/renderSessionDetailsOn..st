rendering
renderSessionDetailsOn: html
	html heading level3
		with: [ html text: 'Experiment details'.
			self badgeAbTesting: self experimentSession on: html ].
	html render: self nameEditor.
	html render: self notesEditor.
	self experimentSession abTesting
		ifTrue: [ html heading level4 with: 'Experiment ID '.
			html render: self sessionId ].
	self renderProtocolsFormOn: html