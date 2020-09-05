global
generateGraphFor: aTask of: aProtocol on: html
	html tbsPanel
		style: 'border: 2px solid #aba5a5';
		beDefault;
		with: [ html tbsPanelHeading
				style: 'background-color:transparent; border-bottom: 2px solid #aba5a5';
				with: [ self generateHeaderTaskFor: aTask on: html ].
			html tbsPanelBody with: [ self generateBodyTaskFor: aTask of: aProtocol on: html ] ]