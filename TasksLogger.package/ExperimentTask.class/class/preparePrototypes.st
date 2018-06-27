prototypes
preparePrototypes
	| newTask prototypes |
	prototypes := OrderedCollection new.
	newTask := ExperimentTask new
		id: '1';
		name: 'Nothing';
		notes: 'A dummy task that will not be perceived by the user. Useful to finish experiments.';
		componentClassname: 'NullComponent';
		becomePrototype.
	newTask save.
	prototypes add: newTask.
	newTask := ExperimentTask new
		id: '2';
		name: 'Simple demographics';
		notes: 'A simple demographics capturing tool (age and internet hours).';
		componentClassname: 'BasicDemographicsComponent';
		becomePrototype.
	newTask save.
	prototypes add: newTask.
	newTask := ExperimentTask new
		id: '3';
		name: 'Basic task intructions';
		notes:
			'Provides instructions for a task. Records time. Can pause and resume. Has a basic success condition.';
		componentClassname: 'TaskInstructionsComponent';
		becomePrototype.
	newTask
		addProperty: 'instructions'
			describedBy: 'Instructions for the participant. Can be html or plain text.';
		addProperty: 'successCondition'
			describedBy: 'Some javascript code that will execute to check wether the task was completed.'.
	newTask save.
	prototypes add: newTask.
		newTask := ExperimentTask new
		id: '4';
		name: 'SUS questionaire';
		notes: 'A SUS questionaire.';
		componentClassname: 'SUSComponent';
		becomePrototype.
	newTask save.
	prototypes add: newTask.
	^ prototypes