rendering
renderButtonsOn: html
	"Displays the button to save the changes applied to the session"
	
	html tbsWell beSmall 
		class: 'buttonPanel';
		with: [ 
			html anchor beButton
				class: 'btn-success';
				callback: [ self save ];
				with: 'Bact to experiment'
		]