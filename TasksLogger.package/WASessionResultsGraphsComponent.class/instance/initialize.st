initialization
initialize
	super initialize.
	graphsComponents := Dictionary new.
	graphsComponents at: 'TaskInstructionsComponent' put: TaskInstructionsComponentGraph new.
	graphsComponents at: 'InputVariableComponent' put: InputVariableComponentGraph new.
	graphsComponents at: 'QuestionaireComponent' put: QuestionaireComponentGraph new.
	graphsComponents at: 'SUSComponent' put: SUSComponentGraph new.
	graphsComponents at: 'YoutubeVideoComponent' put: YoutubeVideoComponentGraph new.