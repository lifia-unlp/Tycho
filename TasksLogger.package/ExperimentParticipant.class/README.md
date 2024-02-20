I represent a user that executes a specific protocol as part of an experiment session.

I know the ID that uniquely identifies me.
I know the data (start time, duration and status) that reflects my overall experience in the session.
I know the protocol that I have to execute within the session.
I know the session I am part of.
I know the results of the protocol tasks I have performed.


Public API and Key Messages

- assignToSession:withId:
- isBot
- isPerson
- start
- execute
- complete
- ...
- (for bonus points) how to create instances.
	
	...
   
 
Internal Representation and Key Implementation Points.

	Instance Variables	
		id:					<Integer> Unique identifier of the participant.
		session:			<ExperimentSession> Experiment session of which the participant is part
		protocol: 		<ExperimentProtocol> Protocol executed by the participant		
		startTime:		<DateAndTime> Start time of the participant withi the experiment session.
		duration:    	<Integer> Duration, in seconds, of the intervention of the participant in the experiment session.			
		status: 			<String> Text that describes the status of the participant in the experiment session: 'not-started', 'running', 'completed', 'aborted'
		tasksResults:	<OrderedCollection <ExperimentTaskResult>> Results of the protocol tasks executed by the participant.					

	Implementation Points
