rendering-sessions
renderActionsForSession: anExperimentSession on: html
	"Displays the individual actions that can be performed on the given experiment session (show, delete, ...)"
	
	html anchor
		callback: [ self showSession: anExperimentSession ];
		with: [ html tbsGlyphIcon iconEyeOpen title: 'Show details of this session' ].
	html space.
	html anchor
		callback: [ self deleteSession: anExperimentSession ];
		with: [ html tbsGlyphIcon iconTrash title: 'Delete this session' ].	