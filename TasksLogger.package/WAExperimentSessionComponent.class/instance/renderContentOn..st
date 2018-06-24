rendering
renderContentOn: html
	html anchor
		callback: [ self answer ];
		with: 'Back to list of sessions'.
	html horizontalRule.
	html heading: 'Session details'.
	html
		form: [ html text: 'id: ', self experimentSession id.
			html break.
			html text: 'description: '.
			html textArea on: #description of: self experimentSession.
			html break.
			html submitButton
				callback: [ self answer ];
				value: 'Save changes' ].
	self renderTasksOn: html