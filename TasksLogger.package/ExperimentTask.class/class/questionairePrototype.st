prototypes
questionairePrototype
	^ self new
		name: 'Simple questionaire';
		notes: 'A sequence of simple questions, to elicit very short answers.';
		componentClassname: 'QuestionaireComponent';
		becomePrototype;
		addProperty: 'introduction'
			describedBy: 'Provide an introduction to this set of questions'
			value: 'Answer these questions succinctly - like if they were tweets';
		addProperty: 'questions'
			describedBy: 'A list of questions, one per line.'
			value: 'How old are you?\How many hours a day do you spend in front of your device?' withCRs withInternetLineEndings