accessing
availablePrototypes
	^ #(basicTaskInstructions messageScreen questionaire sus youtubeVideo semaphoreWait semaphoreSignal)
		collect: [ :selector | ExperimentTask perform: (selector , 'Prototype') asValidSelector ]