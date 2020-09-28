rendering-tasks
renderWorkflowOn: html
|sequenceOfTask|
	html heading
		level: 3;
		with: 'Sequence of tasks'.
	sequenceOfTask := html unorderedList
		class: 'list-unstyled';
		id: #tasksList.
	self protocolIsEditable ifTrue:[	
		sequenceOfTask script:
			(html jQuery new sortable
				containment: 'parent';
				onStop: (html jQuery ajax callback: [ :ordered | self saveOrder: ordered ] passengers: (html jQuery this find: 'li'))). ].
	sequenceOfTask with: [ protocol tasks
				ifNotEmpty: [ :tasks | tasks do: [ :task | self renderTask: task on: html ] ]
				ifEmpty: [ html tbsWell: 'No tasks to show. Add some from the list of task prototypes down below.' ] ]