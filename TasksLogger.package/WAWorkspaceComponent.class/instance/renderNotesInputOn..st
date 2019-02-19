rendering
renderNotesInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'notes';
				with: 'Notes'.
			html textArea
				on: #notes of: self workspace;
				tbsFormControl;
				id: 'notes';
				placeholder: 'Describe the workspace''s purpose.' ]