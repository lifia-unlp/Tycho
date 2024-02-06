testing
isEditable
	"Returns true if the bot task can be edit to customize some of its properties, otherwise returns false."
	"By default returns false. It should be overridden by subclasses that model the types of bot tasks that can be customized."
			
	^ false