prototypes
preparePrototypes
	| newTask prototypes |
	prototypes := OrderedCollection new.
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'Nothing';
		notes: 'A dummy task that will not be perceived by the user. Useful to finish experiments.';
		componentClassname: 'NullComponent';
		becomePrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'Simple demographics';
		notes: 'A simple demographics capturing tool (age and internet hours).';
		componentClassname: 'BasicDemographicsComponent';
		becomePrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'Basic task intructions';
		notes: 'Provides instructions for a task. Records time. Can pause and resume. Has a basic success condition.';
		componentClassname: 'TaskInstructionsComponent';
		becomePrototype;
		addProperty: 'instructions' describedBy: 'Instructions for the participant. Can be html or plain text.';
		addProperty: 'successCondition'
			describedBy: 'Some javascript code that will execute to check wether the task was completed.'.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'SUS questionaire';
		notes: 'A SUS questionaire.';
		componentClassname: 'SUSComponent';
		becomePrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	prototypes add: newTask.
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'Message screen';
		notes: 'Blocks the entire screen to give the participant a message.';
		componentClassname: 'MessageComponent';
		addProperty: 'title' describedBy: 'A title for this message.';
		addProperty: 'message' describedBy: 'An importante message for the participant. Can be basic html or plain text.';
		becomePrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	^ prototypes