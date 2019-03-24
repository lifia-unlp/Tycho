rendering
renderMainContentOn: html
	self renderSessionDetailsOn: html.
	html render: sessionResultsComponent.
	self
		renderDeleteButtonOn: html;
		renderButtonsOn: html