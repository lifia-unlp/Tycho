rendering
renderSessionDetailsOn: html
	html heading: 'Session details'.
	html
		tbsForm: [ html text: 'id: ' , self experimentDesign id.
			html
				tbsFormGroup: [ html label
						for: 'description';
						with: 'Description'.
					html textInput
						on: #description of: self experimentDesign;
						tbsFormControl;
						id: 'description';
						placeholder: 'Describe the task' ].
			html submitButton
				callback: [ self answer ];
				value: 'Save changes' ]