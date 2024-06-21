I am the visual component used to configure a bot programmable task that implements a instructions task of the protocol assigned to the bot.

I know the bot programmable task under configuration.
I show the details of the protocol task simulated by the bot task under configuration.
I allow the user to add instructions to the bot programmable task.
I allow the user to remove instructions from the bot programmable task.
I allow the user to update the order of the instructions of the bot programmable task.
I allow the user to request the edition of a bot task instruction.

Public API and Key Messages

- addInstruction:
- removeInstruction:
- editInstruction:
- updatedOrder:
- save
- cancel
- (for bonus points) how to create instances.

   WABotProgrammableTaskComponent on: aBotProgrammableTask.
 
Internal Representation and Key Implementation Points.

	Instance Variables
		botTask:				<BotProgrammableTask> Bot programmable task under configuration				
		originalBotTask:	<BotProgrammableTask> Copy of the bot programmable task to reset the changes if the user cancels the operation
 

	Implementation Points