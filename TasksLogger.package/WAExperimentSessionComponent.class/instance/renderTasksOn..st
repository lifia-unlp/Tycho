rendering
renderTasksOn: html
	html heading
		level: 2;
		with: 'Tasks'.
	html
		unorderedList: [ experimentSession tasks
				do: [ :each | 
					html
						listItem: [ html anchor
								callback: [ self showDetailsOfTask: each ];
								with: each id.
							html text: ' (' , each componentClassname , ') -> ' , each description ] ].
			html
				listItem: [ html anchor
						callback: [ self addNewTask ];
						with: '[add new]' ] ]