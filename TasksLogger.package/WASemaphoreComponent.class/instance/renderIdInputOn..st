rendering-form
renderIdInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'id';
				with: 'Id'.
			html textInput
				on: #id of: self semaphore;
				tbsFormControl;
				id: 'id';
				placeholder: 'The global id' ]