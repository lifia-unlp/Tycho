rendering
renderVariablesOn: html
	"Displays the section that shows the variables availables in the session"

	html tbsFormGroup: [ 
		html heading
			level: 3;
			with: 'Variables'.
		self session variables
			ifNotEmpty: [ :variables | 
				variablesList globals: self session variables.
				html render: variablesList ]
			ifEmpty: [ html paragraph: 'No variables are being used in this session' ] 
	]