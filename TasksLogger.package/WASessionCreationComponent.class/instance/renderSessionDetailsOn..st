rendering
renderSessionDetailsOn: html
	"Displays the relevant info for a new session that has no yet been started."

	html heading level3 with: 'Experiment session details'.	
	html heading level4 with: 'Experiment'.
	html paragraph: (self session experiment name).	
	html heading level4 with: 'Session ID'.
	html paragraph: (self session id).
	html render: self notesEditor.