rendering-tasks
renderWorkflowOn: html
	html heading
		level: 3;
		with: 'Sequence of tasks'.
	html unorderedList
		class: 'list-unstyled';
		id: #tasksList;
		script:
			(html jQuery new sortable
				onStop: (html jQuery ajax callback: [ :ordered | self saveOrder: ordered ] passengers: (html jQuery this find: 'li')));
		with: [ protocol tasks
				ifNotEmpty: [ :tasks | tasks do: [ :task | self renderTask: task on: html ] ]
				ifEmpty: [ html tbsWell: 'No tasks to show. Add some from the list of task prototypes down below.' ] ]