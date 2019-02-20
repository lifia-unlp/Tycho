rendering
renderWorkspaceDetailsOn: html
	self workspace name
		ifNil: [ html heading: 'New Workspace' ]
		ifNotNil: [ html heading: 'Workspace ' , self workspace name ].
	html
		tbsForm: [ self
				renderNameInputOn: html;
				renderNotesInputOn: html.
			html tbsButton
				callback: [ self answer: nil ];
				value: 'Cancel'.
			html space.
			html tbsButton
				callback: [ self answer: workspace ];
				value: 'Save changes' ].
	self renderProtocolsFormOn: html