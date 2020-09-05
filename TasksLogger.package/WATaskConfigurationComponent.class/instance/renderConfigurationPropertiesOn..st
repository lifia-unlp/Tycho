rendering
renderConfigurationPropertiesOn: html
	self task properties
		do: [ :property | 
			property isTextArea
				ifTrue: [ self renderTextAreaFor: property On: html ].
			property isCheckbox
				ifTrue: [ self renderCheckboxFor: property On: html ] ]