prototypes-LEGACY
prepareCollectDomElementsPrototype
	| newTask |
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'Collect DOM elements';
		notes: 'Provides instructions for a task that is completed by collecting DOM elements. Records time. Can pause and resume. Has a basic success condition.';
		componentClassname: 'DOMCollectorComponent';
		becomePrototype;
		addProperty: 'instructions' describedBy: 'Instructions for the participant. Can be html or plain text.' value: 'Collect (by clicking on them) all images in this page';
		addProperty: 'completionChoices' describedBy: 'Which choices will the participant have to finish the task? Use exactly one of these values: #done or #doneOrAbandon' value: '#doneOrAbandon';
		addProperty: 'successCondition' describedBy: 'Some javascript code that will execute to check wether the task was completed.' value: 'true'.
	^ newTask