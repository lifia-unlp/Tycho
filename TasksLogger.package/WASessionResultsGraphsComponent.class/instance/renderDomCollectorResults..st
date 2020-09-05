rendering
renderDomCollectorResults: html
	| dictionarySamples |
	html tbsRow: [ html tbsColumn: [ html tbsPageHeader with: [ html heading level2 with: 'Details By Protocol' ] ] ].
	self session protocols
		do: [ :protocol | 
			dictionarySamples := Dictionary new.
			html tbsRow: [  html heading level3 with: protocol name  ].
			protocol tasks
				do: [ :task |
					"instanceDraw := self instanceDrawTask: task componentClassname.
					instanceDraw graphTask.
					" 
					task componentClassname = 'DOMCollectorComponent'
						ifTrue: [ dictionarySamples at: task put: (self store taskResultsForTask: task) ] ].
			dictionarySamples keys do: [ :key | 
					html tbsRow: [ html heading level5 with:(key id , ' - ' , key name) ].
					html
						tbsRow: [ html text: 'Average Time Ellapsed: '.
							html text: (self renderAverageElapsedTime: (dictionarySamples at: key)) ] ] ]