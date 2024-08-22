I am the view component that shows the user the detailed information of an experiment session.

I know the session that is under visualization.
I allow the user to change the notes (observations) of the session.
I allow the user to edit the values of the semaphores/variables included in the session.

Public API and Key Messages

- save
- cancel
- (for bonus points) how to create instances.

   WASessionCreationComponent on: anExperimentSession.
 
Internal Representation and Key Implementation Points.

    Instance Variables
		session:				<ExperimentSession> Experiment session under visualization
		notesEditor:			<InPlacePropertyEditorComponent> Component to view and eventually edit the notes (description) of the session
		participantsList:	<WASessionParticipantsViewComponent> Component to view the participants of the session
		sempahoresList:		<WAVariableListComponent> Component to view the variables used in the session and, eventually, edit its values.
		variablesList:		<WASemaphoreListComponent> Component to view the semaphores used in the session and, eventually, change its values.

    Implementation Points