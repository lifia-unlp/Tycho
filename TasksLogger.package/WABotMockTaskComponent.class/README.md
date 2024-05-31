I am the visual component used to configure a bot task that simulates a task of the protocol assigned to the bot.

I know the bot mock task under configuration.
I show the details of the protocol task simulated by the bot task under configuration.
I allow the user to update the delay time of the mock task.

I interact with the bot mock task that is being configured.

Public API and Key Messages

- save
- cancel
- (for bonus points) how to create instances.

   WABotMockTaskComponent on: aBotMockTask.
 
Internal Representation and Key Implementation Points.

	Instance Variables
		botTask:		<BotMockTask> Bot mock task under configuration
		delay:			<Integer> Delay time displayed in the component input field
