rendering
renderMainContentOn: html
	"Render the main content of the view to configure an experiment bot"

	self renderBotDetailsOn: html. 
	self renderBotProtocolOn: html.
	self renderActionButtonsOn: html.
