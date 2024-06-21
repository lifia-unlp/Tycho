rendering
renderMainContentOn: html
	"Render the main content of the view to configure a bot programmable task"
	
	self renderTaskDetails: self botTask task on: html.
	self renderWorkflowOn: html.
	self renderAvailableInstructionsPrototypesOn: html.
	self renderButtonsOn: html.
	