rendering
renderSemaphoresOn: html
	html
		tbsFormGroup: [ html label: 'Semaphores'.
			self session semaphores
				ifNotEmpty: [ :semaphores | semaphores do: [ :semaphore | html paragraph: semaphore id ] ]
				ifEmpty: [ html paragraph: 'No semaphores are being used in this Workspace' ] ]