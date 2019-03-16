rendering-filters
renderTaskNameFilterOn: html
	html
		tbsButtonGroup: [ html tbsDropdownButton
				beDefault;
				with: [ html
						text: (selectedTaskName ifNil: [ 'Task name: All ' ] ifNotNil: [ 'Task name: ', selectedTaskName ]);
						tbsCaret ].
			html
				tbsDropdownMenu: [ (self filteredProtocolSampleTaskTuples collect: [ :each | each third task name ]) asSet
						do: [ :each | 
							html
								tbsDropdownMenuItem: [ html anchor
										callback: [ selectedTaskName := each ];
										with: each ] ].
					html
						tbsDropdownMenuItem: [ html anchor
								callback: [ selectedTaskName := nil ];
								with: 'All' ] ] ]