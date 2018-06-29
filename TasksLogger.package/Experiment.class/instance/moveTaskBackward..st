workflow
moveTaskBackward: aTask
	"Move a task to an earlier point in the workflow"

	| index |
	index := tasks indexOf: aTask.
	index = 1
		ifTrue: [ ^ self ].
	tasks swap: index with: index - 1