rendering
renderTaskInstructionsComponentConfiguration: each on: html
	html label: 'Instructions for the participant'.
	html paragraph: (each atProperty: 'instructions').
	html label: 'Completion choices'.
	html paragraph: (each atProperty: 'completionChoices').
	html label: 'Success condition'.
	html paragraph: (each atProperty: 'successCondition')