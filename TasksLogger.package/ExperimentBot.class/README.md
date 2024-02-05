I represent a bot that can simulate the experiment protocol assigned to me.

I know how to bind to a protocol, mapping the protocol tasks to tasks executables by a bot.
I also know how to execute the assigned protocol, running each of the tasks that i understand, that is, 
the bot tasks that were mapped from the protocol tasks.


Public API and Key Messages

- bindProtocol: anExperimentProtocol
- (for bonus points) how to create instances.

   ExperimentBot name: 'CommentorBot' notes: 'A bot that inserts random comments in a shared document'
 
Internal Representation and Key Implementation Points.

   Instance Variables
		name:			<String>	Name of the bot that uniquely identifies it within an experiment 
		notes:			<String> Detailed description of the purpose of the bot 
		protocol:		<ExperimentProtocol> Protocol assigned to the bot
		tasks:			<OrderedCollection> Collection of tasks executables by the bot (ExperimentBotTask)


    Implementation Points