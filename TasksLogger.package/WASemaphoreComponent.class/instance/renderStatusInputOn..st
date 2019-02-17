rendering-form
renderStatusInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'status';
				with: 'Status'.
			html textInput
				on: #status of: self semaphore;
				tbsFormControl;
				id: 'status';
				placeholder: 'The sempahore status' ]