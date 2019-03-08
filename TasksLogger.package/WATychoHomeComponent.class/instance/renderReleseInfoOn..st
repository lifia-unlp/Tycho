rendering
renderReleseInfoOn: html
	html
		paragraph: [ html text: 'Release: ' , TasksLoggerScriptsRunner releaseDate printString , ' in ' , TasksLoggerScriptsRunner mode , ' mode ('.
			html anchor
				url: 'https://github.com/juliangrigera/Tycho';
				target: '_new';
				with: TasksLoggerScriptsRunner referenceCommit.
			html text: ')' ]