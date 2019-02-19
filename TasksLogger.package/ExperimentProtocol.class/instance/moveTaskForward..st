workflow
moveTaskForward: aTask
	"Move a task to a later point in the workflow"

	| index |
	index := tasks indexOf: aTask.
	index = tasks size
		ifTrue: [ ^ self ].
	tasks swap: index with: index + 1