rendering
renderFooterOn: html
	html tbsContainerFluid
		class: #footer;
		with: [ html
				tbsRow: [ html
						tbsColumn: [ html
								paragraph: [ html text: 'Developed at '.
									html anchor
										target: #blank;
										url: 'http://www.lifia.info.unlp.edu.ar/lifia/en/';
										with: 'LIFIA'.
									html text: ' - Universidad Nacional de La Plata, Argentina' ].
							html
								paragraph: [ 'Powered by '.
									html anchor
										target: #blank;
										url: 'https://pharo.org';
										with: 'Pharo'.
									html text: ' and '.
									html anchor
										target: #blank;
										url: 'http://seaside.st';
										with: 'Seaside' ].
							html
								paragraph: [ html anchor
										target: #blank;
										url: 'https://github.com/juliangrigera/Tycho';
										with: 'GitHub' ].
							html
								paragraph:
									'Reference commit: ' , TasksLoggerScriptsRunner referenceCommit , ' ('
										, TasksLoggerScriptsRunner releaseDate greaseString , ')' ]
							mediumSize: 6;
						tbsColumn: [  ] mediumSize: 6 ] ]