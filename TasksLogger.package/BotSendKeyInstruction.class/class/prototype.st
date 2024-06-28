instance creation
prototype
	"Creates a send key instruction with default values"
	
	^ self 
		selector: (ExperimentValueHolder value: '#someCssSelector') 
		text: (ExperimentValueHolder value: 'Enter here some text')