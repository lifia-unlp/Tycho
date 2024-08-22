rendering-sessions
renderSession: anExperimentSession on: html
	"Displays the main data of the given experiment session, as well as the individual actions that can be performed on the session, in a HTML table row"
	
	html tableRow: [
		html
			tableData: [ 
				html anchor
					callback: [ self showSession: anExperimentSession ];
					with: anExperimentSession id ];
			tableData: [
				html tbsLabel 
					beDefault; 
					with: anExperimentSession status ];
			tableData: anExperimentSession printStartTime;
			tableData: anExperimentSession printDuration;
			tableData: [ self renderActionsForSession: anExperimentSession on: html]		
		]