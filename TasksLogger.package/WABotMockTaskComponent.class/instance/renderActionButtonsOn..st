rendering
renderActionButtonsOn: html
	"Displays the buttons to save/cancel the changes applied to the bot task"
	
	html tbsWell beSmall 
		class: 'buttonPanel';
		with: [ 
			self renderCancelButtonOn: html.
			html space.
			self renderOkButtonOn: html	]