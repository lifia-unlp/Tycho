rendering
renderActionButtonsOn: html
	"Displays the buttons to save/cancel the changes applied to the experiment bot. 
	 Also, displays a button to delete the experiment bot."
	
	html tbsWell beSmall 
		class: 'buttonPanel';
		with: [ 
			self renderCancelButtonOn: html.
			html space.
			self renderOkButtonOn: html	]