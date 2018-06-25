rendering
renderLoginPageOn: html
	html
		tbsContainer: [ html
				tbsJumbotron: [ html heading: 'Web experiments notebook'.
					html image url: WAExperimentFileLibrary / #notebookPng.
					html paragraph: 'Design your web experiments, run them, and record the results.'.
					html paragraph: 'Use your secret word to open it.'.
					html
						paragraph: [ html
								tbsForm: [ html passwordInput
										on: #password of: self;
										id: 'password';
										placeholder: 'secret'.
									html space.
									html tbsButton
										beSmall;
										bePrimary;
										callback: [  ];
										with: 'Open!' ] ] ] ]