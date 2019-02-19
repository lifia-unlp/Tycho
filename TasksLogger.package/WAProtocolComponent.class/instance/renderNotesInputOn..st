rendering
renderNotesInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'notes';
				with: 'Notes'.
			html textArea
				on: #notes of: self protocol;
				tbsFormControl;
				id: 'notes';
				placeholder:
					'Describe the experiment design. What''s its goal? What''s needed? Who designed it?' ]