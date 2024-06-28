rendering
renderContentOn: html
	"Display the component to edit the model value associated.
	The displayed widget depends on the type of value of the model's property (constant value or variable's reference)"
			
	(self mode = 'value')
		ifTrue: [ self renderInputForValueOn: html ] 
		ifFalse: [ self renderInputForVariableOn: html ]