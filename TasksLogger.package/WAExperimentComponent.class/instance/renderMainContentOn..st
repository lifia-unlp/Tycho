rendering
renderMainContentOn: html
	"Render the main content of the view to configure an experiment"

	self renderExperimentDetailsOn: html.
	self renderProtocolsOn: html.
	self renderBotsOn: html.
	self renderActionButtonsOn: html.
	
	"
	self renderExperimentDetailsOn: html. 
	self renderProtocolsOn: html.
	self renderBotsOn: html.
	self renderSessionsOn: html.
	self renderActionButtonsOn: html.
	"