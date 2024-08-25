I am the UI component that displays the details (results) of the tasks assigned to a session participant

I know the tasks results of an experiment participant.

Public API and Key Messages

- renderContentOn: html  
- renderTaskResult: aTaskResult withNumber: anInteger on: html 
- (for bonus points) how to create instances.

   WAParticipantTasksResultsComponent on: anExperimentTaskResult.
 
Internal Representation and Key Implementation Points.

	Instance Variables
		tasksResults:		<Collection<ExperimentTaskResult>> Tasks results of a session participant


    Implementation Points