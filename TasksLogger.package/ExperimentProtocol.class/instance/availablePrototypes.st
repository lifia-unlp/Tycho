accessing
availablePrototypes
	^ #(basicTaskInstructions messageScreen questionaire sus youtubeVideo semaphoreWait semaphoreSignal inputVariable)
		collect: [ :selector | ExperimentTask perform: (selector , 'Prototype') asValidSelector ]