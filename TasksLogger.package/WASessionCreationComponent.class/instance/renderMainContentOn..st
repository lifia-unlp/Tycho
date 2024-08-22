rendering
renderMainContentOn: html
	"Displays the content of this view"

	self renderSessionDetailsOn: html.
	self renderParticipantsOn: html.
	self renderVariablesOn: html.
	self renderSemaphoresOn: html.
	self renderButtonsOn: html.