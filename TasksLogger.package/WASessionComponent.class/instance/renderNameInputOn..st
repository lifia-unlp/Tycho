rendering
renderNameInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'name';
				with: 'Name'.
			html textInput
				on: #name of: self session;
				tbsFormControl;
				id: 'name';
				placeholder: 'Describe the session''s name.' ]