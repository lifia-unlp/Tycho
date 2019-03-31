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
	protocol := ExperimentProtocol name: 'test' notes: ''.
	session := ExperimentSession name: 'test' notes: ''