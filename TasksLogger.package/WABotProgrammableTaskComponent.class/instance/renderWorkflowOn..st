rendering
renderWorkflowOn: html
	html heading
		level: 3;
		with: 'Bot instructions'.
	html unorderedList
		class: 'list-unstyled cards-list';
		id: #instructionsList;
		script:
			(html jQuery new sortable
				containment: 'parent';
				onStop: (html jQuery ajax callback: [ :ordered | self saveOrder: ordered ] passengers: (html jQuery this find: 'li')));			
		with: [ botTask instructions 
				ifNotEmpty: [ :instructions | instructions do: [ :instruction | self renderBotInstruction: instruction on: html ] ]
				ifEmpty: [ html tbsWell: 'No bot instructions to show. Add some from the list of instructions prototypes down below.' ] ]