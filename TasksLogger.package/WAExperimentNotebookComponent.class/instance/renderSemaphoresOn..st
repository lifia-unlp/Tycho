rendering-semaphores
renderSemaphoresOn: html
	| headerBlock tableBlock |
	html heading
		level3;
		with: 'Semaphores (to synchronize protocols)'.
	headerBlock := [ html
		tableHeading: 'ID';
		tableHeading: 'Workspace';
		tableHeading: 'Status';
		tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ self store semaphores do: [ :semaphore | self renderSemaphore: semaphore on: html ] ] ].
	html tbsTable: tableBlock.
	html
		form: [ html tbsButton
				callback: [ self addNewSemaphore ];
				with: 'Add new' ]