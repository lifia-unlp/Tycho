callbacks
beVariable
	
	(self mode = 'variable')
		ifFalse: [ self modelValue: (ExperimentVariableReference variableId: '') ]