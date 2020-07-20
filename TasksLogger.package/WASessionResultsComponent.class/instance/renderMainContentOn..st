rendering
renderMainContentOn: html
	html tbsPageHeader
		with: [ html heading
				level1;
				with: [ html text: 'Results '.
					html small: session name , ' (' , session id , ')' ] ].
	self renderTableResultsOn: html