rendering
renderParticipant: anExperimentParticipant on: html
	"Displays the detailed information of a participant on a HTML table row"
	
	html tableRow: [ 
		html
			tableData: anExperimentParticipant description;
			tableData: anExperimentParticipant protocol name;
			tableData: anExperimentParticipant id;
			tableData: anExperimentParticipant printStartTime;
			tableData: anExperimentParticipant printDuration;
			tableData: [ html tbsLabel beDefault; with: anExperimentParticipant status ];
			tableData: anExperimentParticipant printNumberOfCompletedTasks ]		