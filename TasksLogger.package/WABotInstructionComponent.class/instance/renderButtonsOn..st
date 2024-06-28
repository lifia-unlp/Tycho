rendering
renderButtonsOn: html
	"Displays the buttons to save/cancel the changes applied to the bot instruction"
	
	html tbsWell beSmall 
		class: 'buttonPanel';
		with: [ 
			self renderCancelButtonOn: html.
			html space.
			self renderOkButtonOn: html	]