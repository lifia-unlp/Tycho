rendering
renderInputForVariableOn: html
	"Display the widget to configure the model value when this expects a variable reference (variable ID or name)"
			
	html tbsInputGroup: [
   		html tbsInputGroupButton: [
			self renderDropdownMenuWithText: 'Variable' on: html.      		
    ].
    html textInput
        on: #variableId of: self modelValue;
        tbsFormControl;
        id: 'variableId';
        placeholder: 'Enter the ID or name of a variable'.
]