rendering
renderBreadcrumbOn: html
	html
		tbsBreadcrumb: [ html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self answer ];
						with: 'Home' ].
			html tbsBreadcrumbSection
				beActive;
				with: 'Sessions' ]