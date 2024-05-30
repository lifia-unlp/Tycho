rendering
renderBotDetailsOn: html
	"Render components that display and eventually edit the name and notes of the experiment bot"
			
	html heading level3 with: 'Bot details'.
	html render: self nameEditor.
	html render: self notesEditor.