rendering
renderSessionDetailsOn: html
	html heading: 'Session details'.
	html
		form: [ html text: 'id: ' , self experimentSession id.
			html break.
			html text: 'description: '.
			html textArea on: #description of: self experimentSession.
			html break.
			html submitButton
				callback: [ self answer ];
				value: 'Save changes' ]