rendering
renderCallToActionButtonsOn: html
	html anchor
		class: 'btn btn-default btn-lg';
		url: '#homeRegister';
		with: 'Start now'.
	TasksLoggerScriptsRunner firefoxAddonUrl
		ifNotNil: [ :url | 
			html anchor
				class: 'btn btn-default btn-lg';
				url: url;
				with: 'Get Firefox Addon' ].
	TasksLoggerScriptsRunner chromeAddonUrl
		ifNotNil: [ :url | 
			html anchor
				class: 'btn btn-default btn-lg';
				url: url;
				with: 'Get Chrome Addon' ]