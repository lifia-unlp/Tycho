rendering
renderGenericDataOf: tasksResults on: html
	self renderAvgClicksFor: tasksResults on: html.
	self renderAvgElapsedFor: tasksResults on: html.
	self renderInactivityTimeFor: tasksResults on: html.
"	self renderBarExecutionInactivtyFor: tasksResults on: html."