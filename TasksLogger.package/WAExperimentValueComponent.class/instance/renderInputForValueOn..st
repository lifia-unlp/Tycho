rendering
renderInputForValueOn: html
	"Display the widget to configure the model value when this expects a constant value"
			
	html tbsInputGroup: [
   		html tbsInputGroupButton: [
			self renderDropdownMenuWithText: 'Value' on: html.
    ].
    html textInput
        on: #value of: self modelValue;
        tbsFormControl;
        id: 'value';
        placeholder: 'Enter a value for the property'.
]