initialization
initialize
	super initialize.
	loginForm := WALoginForm new
		onAnswer: [ :accountOrNil | self answer: accountOrNil ];
		yourself.