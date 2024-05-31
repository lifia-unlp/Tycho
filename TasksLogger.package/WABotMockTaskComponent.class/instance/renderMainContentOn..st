rendering
renderMainContentOn: html
	"Render the main content of the view to configure a bot mock task"
	
	self renderTaskDetails:  self botTask task on: html.
	self renderBotTaskOn: html.
	