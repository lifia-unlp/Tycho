rendering
renderNotesInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'notes';
				with: 'Notes'.
			html textArea
				on: #notes of: self session;
				tbsFormControl;
				id: 'notes';
				placeholder: 'Describe the session''s purpose.' ]