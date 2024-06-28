rendering
renderDropdownMenuWithText: aString on: html
	"Display the dropdown menu tu show the options to configure a model value: constant value or variable."
	
	html tbsDropdownButton 
		beDefault;
		with: [ html text: aString; space; tbsCaret].
   	html tbsDropdownMenu: [ 
		html tbsDropdownMenuItem: [ 
			html anchor 
				callback: [ self beValue ];
				with: 'Value' ].
		html tbsDropdownMenuItem: [ 
			html anchor 
				callback: [ self beVariable ];
				with: 'Variable' ]
	]