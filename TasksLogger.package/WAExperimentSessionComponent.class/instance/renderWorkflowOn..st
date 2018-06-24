rendering
renderWorkflowOn: html
	html heading
		level: 2;
		with: 'Workflow'.
	html
		unorderedList: [ experimentSession tasks
				do: [ :each | 
					html listItem:
						[ self renderTask: each on: html ] ].
			html
				listItem: [ html anchor
						callback: [ self addNewTask ];
						with: '[add new]' ] ]