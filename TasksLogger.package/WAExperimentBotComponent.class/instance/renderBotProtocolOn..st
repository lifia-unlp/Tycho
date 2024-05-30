rendering-protocol
renderBotProtocolOn: html
	"Displays a dropdown list to select the protocol assigned to the bot. 
	Once a protocol is selected, display the protocol tasks along the bot actions for each task."
	
	html heading level3 with: 'Bot protocol'.
	html heading level4 with: 'Protocol'.
	self renderProtocolSelectorOn: html.
	self renderWorkflowOn: html.
			