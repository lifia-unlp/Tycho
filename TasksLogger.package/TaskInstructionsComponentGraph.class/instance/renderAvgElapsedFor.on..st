private - rendering
renderAvgElapsedFor: tasksResults on: html
	| avg |
	avg := self calculateAvgElapsedFor: tasksResults.
	html tbsPanel
		beSuccess;
		class: 'text-center';
		with: [ html tbsPanelHeading
				with: [ html heading level4
						style: 'text-warning';
						with: 'Avg total elapsed time on executions'].
			html tbsPanelBody: [ html heading level4 with: [ html strong: avg asString , ' sec' ] ] ]