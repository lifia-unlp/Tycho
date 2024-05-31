instance creation
on: aBotMockTask
	"Create a new instance of the view to configure the given bot mock task"
			
	^ (self new) 
		botTask: aBotMockTask;
		delay: aBotMockTask delay;
		yourself.
			