rendering-experiments
renderExperimentListHeaderOn: html
	"Display the header of the table that contains the list of experiments registered by the current user"
	
	html tableHead: [ 
		html tableHeading: 'Name'.
		html tableHeading: 'Notes'.
		html tableHeading: 'Actions'
	]