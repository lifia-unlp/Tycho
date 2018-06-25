rendering
renderNavigationbarOn: html
	html tbsNavbar
		beDefault;
		with: [ html
				tbsContainer: [ html
						tbsNavbarHeader: [ html image
								tbsPullLeft;
								style: 'padding: 10px;';
								url: WAExperimentFileLibrary  / #notebooksmallPng.
							html tbsNavbarBrand
								with: 'Web experiments notebook' ].
					html
						form: [ html tbsNavbarButton
								tbsPullRight;
								callback: [ self returnToIntro ];
								with: 'Home' ] ] ]