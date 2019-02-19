rendering
renderNameInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'name';
				with: 'Name'.
			html textInput
				on: #name of: self protocol;
				tbsFormControl;
				id: 'name';
				placeholder: 'Describe the procotol''s name.' ]