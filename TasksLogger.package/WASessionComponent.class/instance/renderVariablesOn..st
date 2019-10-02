rendering-globals
renderVariablesOn: html
	html
		tbsFormGroup: [ html heading
				level: 3;
				with: 'Variables'.
			self experimentSession variables
				ifNotEmpty: [ :variables | 
					variableListComponent  globals: variables.
					html render: variableListComponent ]
				ifEmpty: [ html paragraph: 'No variables are being used in this experiment' ] ]