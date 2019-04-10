accessing
availablePrototypes
	^ #(basicTaskInstructions messageScreen questionaire sus youtubeVideo semaphoreWait semaphoreSignal inputVariable collectDomElementsTask)
		collect: [ :selector | ExperimentTask perform: (selector , 'Prototype') asValidSelector ]