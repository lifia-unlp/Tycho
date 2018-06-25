rendering
renderContentOn: html
	html anchor
		callback: [ self answer ];
		with: 'Back to list of tasks'.
	html horizontalRule.
	html tbsPanel beDefault
		with: [ html tbsPanelBody: [html heading: 'Task details'.
			html
				tbsForm: [ html text: 'id: ' , self task id.
					html
						tbsFormGroup: [ html label
								for: 'description';
								with: 'Description'.
							html textInput
								on: #description of: self task;
								tbsFormControl;
								id: 'description';
								placeholder: 'Describe the task' ].
					html break.
					html text: 'Component class (On the JS side) :'.
					html select
						list: #('NullComponent' 'WelcomeComponent' 'TaskInstructionsComponent');
						selected: self task componentClassname;
						callback: [ :sel | self task componentClassname: sel ].
					html break.
					html submitButton
						callback: [ self task save.
							self answer ];
						value: 'Save changes' ] ]]