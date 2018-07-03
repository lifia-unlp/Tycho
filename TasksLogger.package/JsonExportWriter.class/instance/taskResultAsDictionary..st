print
taskResultAsDictionary: result
	| dict |
	dict := Dictionary new.
	dict
		at: 'properties' put: result properties;
		at: 'koboldReport' put: result koboldReport.
	^ dict