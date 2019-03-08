callbacks
importExperiment
	| exp |
	exp := self call: WAExperimentImportComponent new.
	exp ifNotNil: [ self addImportedExperiment: exp ]