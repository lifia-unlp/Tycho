initialization
initializeOn: aBotProgrammableTask
			
	botTask := aBotProgrammableTask.
	originalBotTask := aBotProgrammableTask veryDeepCopy.
	errors:= Dictionary new.