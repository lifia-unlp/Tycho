rendering
renderConfigurationPropertiesOn: html
	self task properties
		do: [ :each | 
			html
				tbsFormGroup: [ html label
						for: 'prop' , each name;
						with: (self uncamel: each name).
					html paragraph: each description.
					html textArea
						on: #value of: each;
						tbsFormControl;
						id: 'prop' , each name;
						placeholder: 'Provide a value for this property' ] ]