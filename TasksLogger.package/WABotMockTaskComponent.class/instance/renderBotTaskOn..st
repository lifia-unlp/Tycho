rendering
renderBotTaskOn: html
	"Render the section that displays the bot task info"
	
	html heading level3 with: 'Bot task'.	
	html tbsForm: [
		self renderTypeFieldOn: html.
		self renderDelayFieldOn: html.		
		self renderActionButtonsOn: html.
	 ]					