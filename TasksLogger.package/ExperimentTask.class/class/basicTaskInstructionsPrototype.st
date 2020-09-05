prototypes
basicTaskInstructionsPrototype
	^ self new
		name: 'Basic task intructions';
		notes: 'Provides instructions for a task. Records time. Can pause and resume. Has a basic success condition.';
		componentClassname: 'TaskInstructionsComponent';
		becomePrototype;
		addProperty: 'instructions'
			describedBy: 'Instructions for the participant. Can be html or plain text.'
			value: 'Go to google and find an image that you like';
		addProperty: 'completionChoices'
			describedBy:
			'Which choices will the participant have to finish the task? Use exactly one of these values: #done or #doneOrAbandon'
			value: '#doneOrAbandon';
		addProperty: 'successCondition'
			describedBy: 'Some javascript code that will execute to check wether the task was completed.'
			value: 'true' ;
		addProperty: 'captureClicks'
		describedBy: 'Check if you want to capture the clicks in the task'
		value: 'true'
		typeInput: 'checkbox';
"		addProperty: 'captureClicksElements'
			describedBy: 'Indicate the html elements on which you want to count the clicks. For example: If you want to count the clicks on the html element with id=""container"" of the page www.example.com then you must enter: example.com#container. Each different element must be captured by comma (patternWeb#id, patternWeb#anotherId)
If you leave this input empty then all clicks on the task will be counted.'
			value: '';"
		addProperty: 'captureInactivity'
		describedBy: 'Checek if you want to capture idle time in task execution'
		value: 'true'
		typeInput: 'checkbox';
		addProperty: 'captureDistance'
		describedBy: 'Checek if you you want to capture the distance traveled with the mouse in the execution of the task'
		value: 'true'
		typeInput: 'checkbox'
			
			