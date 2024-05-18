callbacks
addNewExperiment
	"Creates a new experiment with default data and invokes the view that allows its configuration.
	When receives an answer different from nil from the invoked view, adds the experiment to the user account and save de the changes in the store."
	
	"	
	| newExperiment |
	newExperiment := Experiment name: 'Unnamed' notes: ''.
	self
		call: (WAExperimentComponent on: newExperiment)
		onAnswer: [ :answer | 
			answer	 ifNotNil: [ ""
				self session account addExperiment: newExperiment.
				self store save: self session account.
			] 
		]
	"			