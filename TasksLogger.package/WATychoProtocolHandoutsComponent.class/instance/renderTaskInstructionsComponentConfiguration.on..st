rendering
renderTaskInstructionsComponentConfiguration: each on: html
	html label: 'Instructions for the participant'.
	html preformatted: (each atProperty: 'instructions').
	html label: 'Completion choices'.
	html preformatted: (each atProperty: 'completionChoices').
	html label: 'Success condition'.
	html preformatted: (each atProperty: 'successCondition')