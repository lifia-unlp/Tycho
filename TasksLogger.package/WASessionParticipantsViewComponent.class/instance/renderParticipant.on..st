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
			tableData: [
				html span: anExperimentParticipant printNumberOfCompletedTasks.
				html space.
				(detailedParticipants includes: anExperimentParticipant) 
					ifTrue: [ html anchor callback: [self hideTasksResultsOf: anExperimentParticipant ]; with: '(Hide details)'] 
					ifFalse: [ html anchor callback: [self showTasksResultsOf: anExperimentParticipant ]; with: '(Show details)'] ] ].
	
	(detailedParticipants includes: anExperimentParticipant)
		ifTrue: [ self renderTasksResultsOfParticipant: anExperimentParticipant on: html ].