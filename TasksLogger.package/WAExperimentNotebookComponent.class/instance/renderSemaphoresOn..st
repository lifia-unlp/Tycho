rendering-semaphores
renderSemaphoresOn: html
	| headerBlock tableBlock |
	html heading: 'Semaphores'.
	headerBlock := [ html
		tableHeading: 'ID';
		tableHeading: 'Sample Id';
		tableHeading: 'Status';
		tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html
		tableBody: [ self store semaphores do: [ :semaphore | self renderSemaphore: semaphore on: html ] ] ].
	html tbsTable: tableBlock.
	html
		form: [ html tbsButton
				callback: [ self addNewSemaphore ];
				with: 'Add new' ]