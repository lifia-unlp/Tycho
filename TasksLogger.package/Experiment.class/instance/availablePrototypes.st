accessing
availablePrototypes
	^ #(basicTaskInstructions messageScreen questionaire sus youtubeVideo)
		collect: [ :selector | ExperimentTask perform: (selector , 'Prototype') asValidSelector ]