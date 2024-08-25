I am the UI component that displays the participants of a session.

I know the participants who are part of the experiment session.

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   WASessionParticipantsViewComponent on: anExperimentParticipantsCollection
 
Internal Representation and Key Implementation Points.

	Instance Variables
		participants:				<Collection<ExperimentParticipant>> Participants of an experiment session
		detailedParticipants:		<Collection<ExperimentParticipant>> Participants for whom the details of their tasks are displayed in this view
		tasksResultsComponents:	<Dictionary<ExperimentParticipant, WAParticipantTasksResultsComponent>> Dictionary with sucomponents that show tasks results of the participants			 

    Implementation Points