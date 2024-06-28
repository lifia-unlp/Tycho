rendering
renderPropertiesFieldsOn: html
	"Displays the fields for the specific properties of a bot instruction"
	
	self instruction properties do: [ :propSymbol | 
		html tbsFormGroup: [ 
			html label
				for: propSymbol;
				with: propSymbol uncameled.
			html render: (propEditors at: propSymbol).
			"
			html textInput
				on: propSymbol of: self instruction;
				tbsFormControl;
				id: propSymbol.
			"
		]]	