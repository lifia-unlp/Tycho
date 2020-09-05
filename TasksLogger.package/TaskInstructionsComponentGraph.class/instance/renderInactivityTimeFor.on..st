private - rendering
renderInactivityTimeFor: tasksResults on: html
	| avg |
	(tasksResults anySatisfy: [:t | (t atProperty:'captureInactivity') not]) ifFalse:[
	avg := self calculateInactivityTime: tasksResults.
	html tbsPanel
		beDanger;
		class: 'text-center';
		with: [ html tbsPanelHeading
				with: [ html heading level4;
						tbsTooltip: 'The user is considered inactive when 2 seconds elapse without making any interaction' direction: #right ;
						style: 'text-warning';
						with: [ html text: ' Avg inactivity on executions'] ].
			html tbsPanelBody: [ html heading level4 with: [ html strong: avg asString , ' sec' ] ] ] ]