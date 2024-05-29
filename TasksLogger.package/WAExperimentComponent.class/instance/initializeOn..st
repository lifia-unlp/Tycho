initialization
initializeOn: anExperiment
	"Intialize the component to configure the given experiment"	
	
	experiment := anExperiment.
	originalExperiment := anExperiment veryDeepCopy.
	selectedProtocol := nil.
	self initializeInPlaceEditors.

	
			