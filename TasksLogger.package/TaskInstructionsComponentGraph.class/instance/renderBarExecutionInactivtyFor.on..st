private - rendering
renderBarExecutionInactivtyFor: tasksResults on: html
	| inactivityTime elapsedTime executeRate inactiveRate |
	(tasksResults anySatisfy: [:t | (t atProperty:'captureInactivity') not]) ifFalse:[
	inactivityTime := self calculateInactivityTime: tasksResults.
	elapsedTime := self calculateAvgElapsedFor: tasksResults.
	inactiveRate := 0.
	elapsedTime isZero
		ifFalse: [ inactiveRate := inactivityTime * 100 / elapsedTime asFloat truncateTo: 0.01 ].
	executeRate := 100 - inactiveRate.
	html span
		class: 'text-center';
		with: [ html heading level4
				with: [ html text: 'Time active vs Time inactive'.
					html break.
					html small: 'Comparison of elapsed time in execution vs the time that the user was inactive' ] ].
	html tbsProgress
		with: [ html tbsProgressbar
				valueNow: executeRate asString;
				style: 'background-color:#dff0d8; color: #3c763d';
				with: executeRate asString , '%'.
			html tbsProgressbar
				valueNow: inactiveRate asString;
				style: 'background-color:#f2dede; color:#a94442';
				with: inactiveRate asString , '%' ] ]