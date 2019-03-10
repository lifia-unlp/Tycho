importing
importTasks: tasks
	tasks
		do: [ :each | 
			each id: self newTaskId.
			self rememberToSave: each ]