prototypes
prepareSUSPrototype
	| newTask |
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'SUS questionaire';
		notes: 'A SUS questionaire.';
		componentClassname: 'SUSComponent';
		becomePrototype.
	^ newTask