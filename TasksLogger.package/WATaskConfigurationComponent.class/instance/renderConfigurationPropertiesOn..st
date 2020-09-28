rendering
renderConfigurationPropertiesOn: html
	|disabled|
	disabled := (self store taskResultsForTask: (self task)) size > 0.
	self task properties
		do: [ :property | 
			property isTextArea
				ifTrue: [ self renderTextAreaFor: property on: html ].
			property isCheckbox
				ifTrue: [ self renderCheckboxFor: property on: html ] ].