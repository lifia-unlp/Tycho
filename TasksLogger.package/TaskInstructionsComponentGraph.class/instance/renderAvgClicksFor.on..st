private - rendering
renderAvgClicksFor: tasksResults on: html
	| avg size |
	(tasksResults anySatisfy: [:t | (t atProperty:'captureClicks') not])  ifFalse:[
	avg := 0.
	tasksResults
		ifNotEmpty: [ size := tasksResults sum: [ :taskResult | (taskResult atProperty: 'clicks') size ].
			avg := (size / tasksResults size) asFloat truncateTo: 0.01].
	html tbsPanel
		class: 'text-center';
		beDefault;
		with: [ html tbsPanelHeading
				with: [ html heading level4
						style: 'text-warning';
						with: 'Avg off clicks on executions' ].
			html tbsPanelBody: [ html heading level4 with: [ html strong: avg asString , ' clicks' ] ] ]]