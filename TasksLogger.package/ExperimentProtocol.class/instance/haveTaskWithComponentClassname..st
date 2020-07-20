globals
haveTaskWithComponentClassname: aComponentClassName
	^ self tasks anySatisfy: [ :task | task componentClassname = aComponentClassName ]