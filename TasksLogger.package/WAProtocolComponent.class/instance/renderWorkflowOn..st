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
		with: [ protocol tasks do: [ :each | self renderTask: each on: html ] ]