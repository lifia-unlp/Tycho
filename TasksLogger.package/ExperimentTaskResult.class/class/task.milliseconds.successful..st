instance creation
task: task milliseconds: milliseconds successful: aBoolean
	^ self new
		task: task;
		milliseconds: milliseconds;
		successful: aBoolean;
		yourself