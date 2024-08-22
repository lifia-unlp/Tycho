rendering
renderButtonsOn: html
	"Displays the button to save the changes applied to the session"
	
	html tbsWell beSmall 
		class: 'buttonPanel';
		with: [ self renderOkButtonOn: html	]