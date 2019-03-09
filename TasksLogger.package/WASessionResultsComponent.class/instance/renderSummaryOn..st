rendering
renderSummaryOn: html
	html heading
		level: 2;
		with: 'Session results'.
	html heading
		level: 3;
		with: 'Session name'.
	html paragraph: session name.
	html render: self notesEditor