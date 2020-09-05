rendering
renderHeaderOfMainContentOn: html
	html tbsPageHeader
		with: [ html
				tbsRow: [ html
						tbsColumn: [ html heading
								level1;
								with: [ html text: 'Results '.
									html small: session name , ' (' , session id , ')' ] ]
						mediumSize: 9.
					html
						tbsColumn: [ html
								tbsForm: [ html tbsButton beInfo
										value: [html tbsGlyphIcon iconList. html text: ' View all results'];
										callback: [ self viewAllResults: self session ] ] ]
						mediumSize: 3 ] ]