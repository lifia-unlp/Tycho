rendering
renderTypeFieldOn: html
	"Render the form field that displays the bot task type (in this case, a mock task)"
	
	html tbsFormGroup with: [ 
		html label
			for: 'type';
			with: 'Type'.
		html paragraph: [ 
			html tbsLabel 
				beDefault; 
				with: 'Mock Task'
		].		
	]