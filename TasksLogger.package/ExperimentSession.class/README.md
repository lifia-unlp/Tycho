I represent a specific execution of an experiment (usability test), with particular participants running the experiment protocols.

I know the ID, start time, duration and status of the experiment session.
I know the participants (humans or bots) that takes part of the experiment session.
I know the semaphores required to coordinate the protocols executed by the participants.
I know the variables required to share information between the participants.


Public API and Key Messages

- semaphoreWithId:
- variableWithId:
- assignParticipant:toProtocol:
- validateParticipants
- start
- startBots
- complete
- ...
- (for bonus points) how to create instances.
	
	| anExperiment |
	
	anExperiment:= Experiment name: 'Google Docs - Comments' notes: 'Test the ability to make comments in a shared document in Google Docs'.	
	...
	ExperimentSession id: '123456789' experiment: anExperiment.
   
 
Internal Representation and Key Implementation Points.

	Instance Variables	
		id:					<Integer> Unique identifier of the experiment session.
		experiment:		<Experiment> Experiment to which the session belongs				
		startTime:		<DateAndTime> Start time of the experiment session.
		duration:    	<Integer> Duration, in seconds, of the experiment session.			
		status: 			<String> Text that describes the status of the experiment session: 'not-started', 'running', 'completed', 'aborted'		
		participants:	<OrderedCollection <ExperimentParticipant>> Participants (humans or bots) of the experiment session
		semaphores:		<OrederCollection <ExperimentSemaphore>> Semaphores required by the experiment session
		variables	:		<OrderedCollection <ExperimentVariable>> Variables required by the experiment session


	Implementation Points
	

A container for running protocols.
Includes shared data between protocols, i.e. semaphores and variables.
