rendering
renderMainContentOn: html
	self renderHeadingOn: html.
	html
		tbsContainerFluid: [ self renderFeaturesOn: html ];
		tbsContainerFluid: [ self renderRegisterFormOn: html ].
	html render: footerView