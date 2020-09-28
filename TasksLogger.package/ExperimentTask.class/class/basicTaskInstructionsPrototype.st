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
		addProperty: 'captureEventsTag'
			describedBy: 'A list of elements on which you want capture events, one per line. [urlPatterWeb],(#idOfElement | .classOfElement)'
			value: 'example.com,#idTag\example.com,.classNameTag' withCRs withInternetLineEndings;
		addProperty: 'overTag'
		describedBy: 'Check if you want count the times that the mouse passes over the indicated tags and how long it took to do the first time - ONLY IN THE HTML TAGS INDICATED IN THE PREVIOUS INPUT'
		value: 'true'
		typeInput: 'checkbox';
		addProperty: 'countClicksTag'
		describedBy: 'Check if you want count the clicks on the indicated tags - ONLY IN THE HTML TAGS INDICATED IN THE PREVIOUS INPUT'
		value: 'true'
		typeInput: 'checkbox';		
		addProperty: 'captureClicks'
		describedBy: 'Check if you want to capture all clicks during the entire task execution'
		value: 'true'
		typeInput: 'checkbox';
		addProperty: 'captureInactivity'
		describedBy: 'Checek if you want to capture idle time in task execution'
		value: 'true'
		typeInput: 'checkbox';
		addProperty: 'captureDistance'
		describedBy: 'Checek if you you want to capture the distance traveled with the mouse during the entire task execution'
		value: 'true'
		typeInput: 'checkbox'
			
			