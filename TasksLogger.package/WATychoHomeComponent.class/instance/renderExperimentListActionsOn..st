rendering-experiments
renderExperimentListActionsOn: html
	"Display the general actions applicable to the list of experiments"
		
	html form: [ 
		html tbsButton
			callback: [ self addNewExperiment ];
			with: 'Add new'.
		html space.
		html tbsButton
			callback: [ self shouldBeImplemented ];
			with: 'Import (fuel)' 
	]