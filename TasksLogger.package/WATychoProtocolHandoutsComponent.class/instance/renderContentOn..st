rendering
renderContentOn: html
	html div
		class: 'handout';
		id: 'handout-document';
		with: [ html heading
				level: 4;
				with: 'Protocol name'.
			html paragraph: protocol name.
			html heading
				level: 4;
				with: 'Notes'.
			html paragraph: protocol notes.
			html heading
				level: 4;
				with: 'Tasks'.
			protocol tasks
				do: [ :each | 
					html tbsRow
						with: [ html
								tbsColumn: [ html div
										class: 'task-card';
										with: [ self renderTask: each on: html ] ]
								mediumSize: 6.
							html
								tbsColumn: [ html div
										class: 'task-notes';
										with: [ html
												label: 'Your notes';
												paragraph: '...' ] ]
								mediumSize: 6 ] ]
				separatedBy: [ html horizontalRule ] ]