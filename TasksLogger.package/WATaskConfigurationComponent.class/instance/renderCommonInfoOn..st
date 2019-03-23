rendering
renderCommonInfoOn: html
	html
		tbsFormGroup: [ html label
				for: 'name';
				with: 'Task name'.
			html textInput
				on: #name of: self task;
				tbsFormControl;
				id: 'name';
				placeholder: 'Provide a descriptive name for this task' ]
	"	html
		tbsFormGroup: [ html label with: 'Component class (hacker''s info)'.
			html paragraph: task componentClassname ]"