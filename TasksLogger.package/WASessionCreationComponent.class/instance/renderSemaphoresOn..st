rendering
renderSemaphoresOn: html
	"Displays the section that shows the semaphores used in the session"

	html tbsFormGroup: [ 
		html heading
			level: 3;
			with: 'Semaphores'.
		self session semaphores 
			ifNotEmpty: [ :semaphores | 
				semaphoresList globals: self session semaphores.
				html render: semaphoresList ]
			ifEmpty: [ html paragraph: 'No semaphores are being used in this session' ] 
	 ]