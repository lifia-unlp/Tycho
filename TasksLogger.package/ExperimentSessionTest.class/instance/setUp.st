setup - tear down
setUp
	messageTaskOne := ExperimentTask messageScreenPrototype clone.
	messageTaskOne
		atProperty: 'message'
		setValue:
			'an example with <tyvar var="one"/> once, and <tyvar var="tWo"/> <tyvar var=''two''/> twice'.
	messageTaskTwo := ExperimentTask messageScreenPrototype clone.
	messageTaskTwo
		atProperty: 'message'
		setValue:
			'an example with <tyvar var="thRee"/> once, and <tyvar var="tWo"/> <tyvar var=''two''/> twice'.
	
	messageTask:= (ExperimentTask messageScreenPrototype) cloneWithNewId: 1.
	instructionsTask:= (ExperimentTask basicTaskInstructionsPrototype) cloneWithNewId: 2.
	questionaireTask:= (ExperimentTask questionairePrototype) cloneWithNewId: 3.
	signalSemTask:= (ExperimentTask semaphoreSignalPrototype) cloneWithNewId: 4.
	signalSemTask atProperty: 'semaphoreId' setValue: 'testSemaphore'.
	waitSemTask:= (ExperimentTask semaphoreWaitPrototype) cloneWithNewId: 5.
	waitSemTask atProperty: 'semaphoreId' setValue: 'anotherSemaphore'.
	
	messageTaskWithVariable:= (ExperimentTask messageScreenPrototype) cloneWithNewId: 6.
	messageTaskWithVariable
		atProperty: 'message'
		setValue: 'an example with <tyvar var="one"/> one variable referenced'.
			
	protocol := ExperimentProtocol name: 'test' notes: ''.
	session:= ExperimentSession id: 1 experiment: (Experiment name: 'Testing experiment' notes: '').
	"session := ExperimentSession name: 'test' notes: ''"