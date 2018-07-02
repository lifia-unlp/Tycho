rendering
renderCommonInfoOn: html
	html
		tbsFormGroup: [ html label
				for: 'name';
				with: 'Task name:'.
			html textInput
				on: #name of: self task;
				tbsFormControl;
				id: 'name';
				placeholder: 'Provide a descriptive name for this task' ].
	html
		tbsFormGroup: [ html label
				for: 'notes';
				with: 'Notes'.
			html
				paragraph:
					'Describe the purpose of this task. What will the user do? Why? This are not the instructions for the user, but a note to the researcher'.
			html textArea
				on: #notes of: self task;
				tbsFormControl;
				id: 'notes';
				placeholder: 'Provide a description for the researcher' ].
	html
		tbsFormGroup: [ html label with: 'Component class (hacker''s info)'.
			html paragraph: task componentClassname ]