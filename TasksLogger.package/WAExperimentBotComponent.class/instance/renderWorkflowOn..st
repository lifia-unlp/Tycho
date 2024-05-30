rendering-protocol
renderWorkflowOn: html
	"Displays the sequence of tasks for the protocol assigned to the bot. 
	For each task, displays the task info as well as the bot actions required to perform the task."

	html heading
		level: 4;
		with: 'Sequence of tasks'.		
	html unorderedList
		class: 'list-unstyled';
		id: #tasksList;		
		with: [ 
			self bot tasks 
				ifEmpty: [ html tbsWell: 'No tasks to show. You must assign a protocol to the bot first.'  ]  
				ifNotEmpty: [ :botTasks | botTasks do: [ :botTask | self renderBotTask: botTask on: html ]  ]
 		]