accessing
iceWorkingCopy
	"Catch the error in case we are in Pharo 6 and WorkingCOpies have no packages"

	^ [ IceWorkingCopy allInstances
		detect: [ :each | (each packages collect: #name) includes: 'BaselineOfTasksLogger' ]
		ifNone: [ nil ] ]
		on: Error
		do: [ nil ]