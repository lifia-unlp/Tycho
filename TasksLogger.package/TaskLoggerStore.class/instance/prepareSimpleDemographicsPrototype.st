prototypes
prepareSimpleDemographicsPrototype
	| newTask |
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'Simple demographics';
		notes: 'A simple demographics capturing tool (age and internet hours).';
		componentClassname: 'BasicDemographicsComponent';
		becomePrototype.
	^ newTask