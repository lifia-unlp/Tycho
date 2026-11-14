rendering
renderPropertiesFieldsOn: html
	"Displays the fields for the properties of a bot instruction to execute a script JS.
	The input field for the JS code is rendered in a different way."
	
	self instruction properties do: [ :propSymbol |
		propSymbol = #code
			ifTrue: [ 
				self renderCodeFieldOn: html
			] 
			ifFalse: [ 
				html tbsFormGroup: [ 
					html label
						for: propSymbol;
						with: propSymbol uncameled.
					html render: (propEditors at: propSymbol).				
				]		
		]]	