rendering
renderBreadcrumbOn: html
	html
		tbsBreadcrumb: [ html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self call: WATychoHomeComponent new ];
						with: 'Home' ].
			html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self showDetailsOfSession: session ];
						with: 'Experiment' ].
			html tbsBreadcrumbSection
				beActive;
				with: 'Experiment results' ]