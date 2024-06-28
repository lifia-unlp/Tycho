accessing
modelValue: anExperimentValueModel
	mode := anExperimentValueModel class == ExperimentValueHolder
		ifTrue: [ 'value' ]
		ifFalse: [ 'variable' ].
	modelValue := anExperimentValueModel