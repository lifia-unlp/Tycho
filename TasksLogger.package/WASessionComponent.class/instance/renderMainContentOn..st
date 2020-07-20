rendering
renderMainContentOn: html
	self renderSessionDetailsOn: html.
	self renderSummaryJoinsOn: html.
	"html render: sessionResultsComponent."
	self
		renderDeleteButtonOn: html;
		renderButtonsOn: html