rendering
renderExperimentDetailsOn: html
	"Render components that display and eventually edit the name and notes of the experiment"
			
	html heading level3 with: 'Experiment details'.
	html render: self nameEditor.
	html render: self notesEditor.