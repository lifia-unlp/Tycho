I am the view component that allows the user to create a new experiment session.

I know the session that is being created.
I allow the user to change the notes (observations) of the session.
I allow the user to edit the values of the semaphores/variables included in the session.

Public API and Key Messages

- save
- cancel
- (for bonus points) how to create instances.

   WASessionCreationComponent on: anExperimentSession.
 
Internal Representation and Key Implementation Points.

    Instance Variables
		session:				<ExperimentSession> Experiment session being created
		notesEditor:			<InPlacePropertyEditorComponent> Component to view and eventually edit the notes (description) of the session
		participantsList:	<WAParticipantListComponent> Component to configure the participants of the session
		sempahoresList:		<WAVariableListComponent> Component to view the variables used in the session and, eventually, edit its values.
		variablesList:		<WASemaphoreListComponent> Component to view the semaphores used in the session and, eventually, change its values.

    Implementation Points