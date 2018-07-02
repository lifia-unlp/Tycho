rendering
renderExperimentSummaryOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Experiment id #' , experiment id, ' (will be remumbered upon import)' ].
			html
				tbsPanelBody: [ html
						tbsFormGroup: [ html
								label: 'Notes: ';
								break;
								text: experiment notes ].
					html
						tbsFormGroup: [ html
								label: 'Tasks: ';
								break.
							self renderTasksListOn: html ].
					html
						tbsFormGroup: [ html
								label: 'Samples: ';
								break;
								text: 'This experiment includes ' , experiment samples size asString , ' samples' ] ] ].
	html form
		with: [ html submitButton
				callback: [ self answer: experiment ];
				with: 'Import' ]