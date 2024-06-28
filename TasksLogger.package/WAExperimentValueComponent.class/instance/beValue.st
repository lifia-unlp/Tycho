callbacks
beValue
	
	(self mode = 'value') 
		ifFalse: [ self modelValue: (ExperimentValueHolder value: '') ]