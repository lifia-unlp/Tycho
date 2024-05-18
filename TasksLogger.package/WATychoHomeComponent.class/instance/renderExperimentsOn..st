rendering-experiments
renderExperimentsOn: html
	"Display the list of experiments registered by the current user in a table"
	
	html heading: 'Experiments'.	
	html tbsTable: [ 
		self renderExperimentListHeaderOn: html.
		self renderExperimentListBodyOn: html
	].
	self renderExperimentListActionsOn: html.	