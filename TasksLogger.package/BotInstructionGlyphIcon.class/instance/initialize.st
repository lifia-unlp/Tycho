initialization
initialize
	super initialize.
	iconsTable := Dictionary new
		at: BotNavigationInstruction put: #iconGlobe;
		at: BotClickInstruction put: #iconHandUp;
		at: BotSendKeyInstruction put: #iconTextHeight;
		at: BotScriptInstruction put: #iconSoundStereo;
		yourself