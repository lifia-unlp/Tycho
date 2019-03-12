initialization
initialize
	super initialize.
	loginView := WALoginView new.
	registerForm := WARegisterForm new
		onAnswer: [ :answer | self answer: answer ];
		yourself