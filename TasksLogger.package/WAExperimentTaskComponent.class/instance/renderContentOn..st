rendering
renderContentOn: html
	html anchor
		callback: [ self answer ];
		with: 'Back to list of tasks'.
	html horizontalRule.
	html heading: 'Task details'.
	html
		form: [ html text: 'id: ', self task id.
			html break.
			html text: 'description: '.
			html textArea on: #description of: self task.
			html break.
			html text: 'Component class (On the JS side) :'.
			html select
				list: #('NullComponent' 'WelcomeComponent' 'TaskInstructionsComponent');
				selected: self task componentClassname;
				callback: [ :sel | self task componentClassname: sel ].
			html break.
			html submitButton
				callback: [ self task save. ];
				value: 'Save changes' ]