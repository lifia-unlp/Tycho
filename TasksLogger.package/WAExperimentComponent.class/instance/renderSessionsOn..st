rendering-sessions
renderSessionsOn: html
	"Displays the list of experiment sessions, as well as the option to add a new session to the experiment"

	html heading level: 3; with: 'Sessions'.	
	self experiment sessions 
		ifEmpty: [ html paragraph: 'There are no sessions in this experiment' ]
		ifNotEmpty: [ self renderSessionListOn: html ].
	html form: [ 
		html tbsButton
			callback: [ self createSession ];
			with: 'Create session'.
		html space.		
	]