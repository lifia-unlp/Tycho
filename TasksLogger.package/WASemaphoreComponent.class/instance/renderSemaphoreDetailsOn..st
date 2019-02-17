rendering
renderSemaphoreDetailsOn: html
	self semaphore id
		ifNil: [ html heading: 'New Semaphore' ]
		ifNotNil: [ html heading: 'Semaphore ' , self semaphore id ].
	html
		tbsForm: [ self
				renderIdInputOn: html;
				renderSampleIdInputOn: html;
				renderStatusInputOn: html.
			html tbsButton
				callback: [ self answer: semaphore ];
				value: 'Save changes' ]