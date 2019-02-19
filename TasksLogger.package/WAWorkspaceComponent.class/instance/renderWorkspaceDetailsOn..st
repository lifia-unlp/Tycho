rendering
renderWorkspaceDetailsOn: html
	self workspace name
		ifNil: [ html heading: 'New Workspace' ]
		ifNotNil: [ html heading: 'Workspace ' , self semaphore name ].
	html
		tbsForm: [ self
				renderNameInputOn: html;
				renderNotesInputOn: html.
			html tbsButton
				callback: [ self answer: workspace ];
				value: 'Save changes' ]