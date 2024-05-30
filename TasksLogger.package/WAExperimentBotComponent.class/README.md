I am the visual component that allows the user to configure an experiment bot.

I know the experiment bot under configuration.
I allow the user to change the name and description of the experiment bot.
I allow the user to change the protocol linked to the experiment bot.
I allow the user to remove the bot from the experiment.

I interact with a component to edit the bot name (nameEditor).
I interact with a component to edit the bot notes (notesEditor).
I interact with the experiment bot that is being configured.

Public API and Key Messages

- assignProtocol:
- editMockTask: 
- editProgrammableTask: 
- deleteBot
- save
- cancel
- (for bonus points) how to create instances.

   WAExperimentBotComponent on: anExperimentBot with: protocols
 
Internal Representation and Key Implementation Points.

	Instance Variables
		bot:				<ExperimentBot> Experiment bot under configuration
		originalBot:		<ExperimentBot> Copy of the experiment bot to reset the changes if the user cancels the operation
		protocols:   	<Collection<ExperimentProtocol>> List of protocols that can be assigned to the experiment bot
		nameEditor:		<InPlacePropertyEditorComponent> Component to view and eventually edit the name of the experiment bot
		notesEditor:		<InPlacePropertyEditorComponent> Component to view and eventually edit the notes (description) of the experiment bot
		error:				<String> 	Error message when trying to save changes to the bot configuration 

    Implementation Points