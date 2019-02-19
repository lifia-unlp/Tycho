rendering
renderNameInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'name';
				with: 'Name'.
			html textInput
				on: #name of: self workspace;
				tbsFormControl;
				id: 'name';
				placeholder: 'Describe the workspace''s name.' ]