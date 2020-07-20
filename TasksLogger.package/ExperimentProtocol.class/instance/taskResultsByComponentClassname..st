globals
taskResultsByComponentClassname: aClassName
	| dictionary |
	dictionary := Dictionary new.
	self samples
		do: [ :sample | 
			sample taskResults
				do: [ :taskResult | 
					taskResult task componentClassname = aClassName
						ifTrue: [ | element |
							element := dictionary at: taskResult ifAbsent: [ dictionary at: taskResult task put: OrderedCollection new ].
							element add: taskResult.
							dictionary at: taskResult task put: element ] ] ].		
	^ dictionary