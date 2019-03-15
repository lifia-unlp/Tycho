rendering-navbar
renderLogoutLinkOn: html
	html anchor
		callback: [ self logout ];
		with: [ html tbsGlyphIcon iconLogout.
			html
				space;
				text: 'Log out' ]