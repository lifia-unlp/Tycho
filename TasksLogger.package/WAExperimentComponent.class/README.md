I am the visual component that allows the user to configure an experiment.

I know the experiment under configuration.
I allow the user to change the name and description of the experiment.
I allow the user to select the protocols included in the experiment.
I allow the user to manage the bots (automated users) to use in the experiment.

I interact with a component to edit the experiment name (nameEditor).
I interact with a component to edit the experiment notes (notesEditor).
I interact with the experiment that is being configured.

Public API and Key Messages

- cloneProtocol:
- addEmptyProtocol
- deleteProtocol:
- editProtocol:
- createBot
- deleteBot:
- editBot:
- deleteExperiment
- save
- cancel
- (for bonus points) how to create instances.

   WAExperimentComponent on: anExperiment.
 
Internal Representation and Key Implementation Points.

	Instance Variables
		experiment:				<Experiment> Experiment under configuration
		originalExperiment: 	<Experiment> Copy of the experiment to reset the changes if the user cancels the operation
		nameEditor:				<InPlacePropertyEditorComponent> Component to view and eventually edit the name of the experiment
		notesEditor:				<InPlacePropertyEditorComponent> Component to view and eventually edit the notes (description) of the experiment
		selectedProtocol: 		<ExperimentProtocol> Protocol selected in the protocol selection list to add to the experiment

    Implementation Points