rendering-semaphores
renderSemaphoresOn: html
	html
		tbsFormGroup: [ html heading
				level: 3;
				with: 'Semaphores'.
			self experimentSession semaphores
				ifNotEmpty: [ :semaphores | 
					semaphoreComponent semaphores: semaphores.
					html render: semaphoreComponent ]
				ifEmpty: [ html paragraph: 'No semaphores are being used in this Workspace' ] ]