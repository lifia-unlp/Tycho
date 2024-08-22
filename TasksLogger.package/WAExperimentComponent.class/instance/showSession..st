callbacks
showSession: anExperimentSession
	"Call the view that displays the detailed information of the given session"
	
	self call: (WASessionViewComponent on: anExperimentSession)	