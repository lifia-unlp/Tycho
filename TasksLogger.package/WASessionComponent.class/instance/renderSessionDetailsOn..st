rendering
renderSessionDetailsOn: html
	self session name
		ifNil: [ html heading: 'New Session' ]
		ifNotNil: [ html heading: 'Session ' , self session name ].
	html
		tbsForm: [ self
				renderNameInputOn: html;
				renderNotesInputOn: html.
			html tbsButton
				callback: [ self answer: nil ];
				value: 'Cancel'.
			html space.
			html tbsButton
				callback: [ self answer: session ];
				value: 'Save changes' ].
	self renderProtocolsFormOn: html