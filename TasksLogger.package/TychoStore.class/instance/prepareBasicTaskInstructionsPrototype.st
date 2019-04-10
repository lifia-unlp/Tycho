prototypes-LEGACY
prepareBasicTaskInstructionsPrototype
	| newTask |
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'Basic task intructions';
		notes: 'Provides instructions for a task. Records time. Can pause and resume. Has a basic success condition.';
		componentClassname: 'TaskInstructionsComponent';
		becomePrototype;
		addProperty: 'instructions'
			describedBy: 'Instructions for the participant. Can be html or plain text.'
			value: 'Go to google and find an image that you like';
		addProperty: 'completionChoices'
			describedBy: 'Which choices will the participant have to finish the task? Use exactly one of these values: #done or #doneOrAbandon'
			value: '#doneOrAbandon';
		addProperty: 'successCondition'
			describedBy: 'Some javascript code that will execute to check wether the task was completed.'
			value: 'true'.
	^ newTask