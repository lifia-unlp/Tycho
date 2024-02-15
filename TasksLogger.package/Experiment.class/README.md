I represent a usability test that aims to evaluate certain usability aspects of a web application.

I know the protocols that define the tasks that must be performed by the users participating in an experiment run.
I know the bots that can be assigned as participants in the experiment runs.
I know the sessiones that represents the runs or executions of the experiment.

Public API and Key Messages

- addProtocol:
- deleteProtocol: 
- addBot:
- removeBot:
- addSession:
- removeSession:
- (for bonus points) how to create instances.

   Experiment name: 'Google Docs - Comments' notes: 'Test the ability to make comments in a shared document in Google Docs'.
 
Internal Representation and Key Implementation Points.

	Instance Variables	
		name:			<String> Name of the experiment	
		notes:			<String> Detailed description of experiment
		protocols:	<OrderedCollection <ExperimentProtocol>> Protocols tha describes the roles of the participants required in each execution of the experiment
		bots:			<OrederCollection <ExperimentBot>> Bots than can be assigned as participants in the executions of the experiment
		sessions:		<OrderedCollection <ExperimentSession>> Sessiones that represents the executions or runs of the experiment


	Implementation Points