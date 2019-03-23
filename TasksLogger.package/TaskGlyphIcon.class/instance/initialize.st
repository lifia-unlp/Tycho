initialization
initialize
	super initialize.
	iconsTable := Dictionary new
		at: 'TaskInstructionsComponent' put: #iconTextHeightList;
		at: 'MessageComponent' put: #iconWarningSign;
		at: 'QuestionaireComponent' put: #iconQuestionSign;
		at: 'SUSComponent' put: #iconStar;
		at: 'YoutubeVideoComponent' put: #iconFilm;
		at: 'SemaphoreWaitComponent' put: #iconMinusSign;
		at: 'SemaphoreSignalComponent' put: #iconPlayCircle;
		yourself