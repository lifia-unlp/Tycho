rendering
renderLoginLinkOn: html
	html tbsNavbarLink
		callback: [ self login ];
		with: [ html tbsGlyphIcon iconLogin.
			html
				space;
				text: 'Log in' ]