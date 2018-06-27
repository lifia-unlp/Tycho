rendering
renderMainContentOn: html
	html heading: 'Task configuration'.
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'name';
						with: 'Task name:'.
					html paragraph: task name ]. 
				html
				tbsFormGroup: [ html label
						for: 'notes';
						with: 'Notes'.
					html textArea
						on: #notes of: self task;
						tbsFormControl;
						id: 'notes';
						placeholder: 'Describe the task. What will the user do? Why? This are not the instructions for the user, but a note to the researcher.' ].]