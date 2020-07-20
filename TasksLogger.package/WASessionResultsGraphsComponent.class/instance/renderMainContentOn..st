rendering
renderMainContentOn: html
	html tbsPageHeader
		with: [ html heading
				level1;
				with: [ html text: 'Results '.
					html small: session name , ' (' , session id , ')' ] ].
	self renderGenericResults: html.
	self renderDomCollectorResults: html.
	html anchor
		callback: [ self viewAllResults: self session ];
		with: 'See all results'.
	