rendering
renderMainContentOn: html
	self renderSessionDetailsOn: html.
	html render: sessionResultsComponent.
	self
		renderDeleteButtonOn: html;
		renderOkButtonOn: html