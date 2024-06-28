rendering
renderCommonFieldsOn: html
	"Displays those fields common to all bot instructions, like the human readable description of the instruction"
			
	html tbsFormGroup: [ 
		html label
			for: 'description';
			with: 'Description'.
		html textInput
			on: #description of: self instruction;
			tbsFormControl;
			id: 'description';
			placeholder: 'Provide a human readable description this bot instruction' 
	]