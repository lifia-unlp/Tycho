private -rendering
renderSusAnswers: tasksResults on: html
	| chart |
	chart := HighchartWebView forSimpleChart.
	self configureSusQuestionaireChart: chart.
	self dataOfSusQuestionaire: tasksResults on:chart.
	html render: chart