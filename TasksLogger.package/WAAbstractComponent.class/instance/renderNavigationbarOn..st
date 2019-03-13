rendering
renderNavigationbarOn: html
	html tbsNavbar
		beDefault;
		with: [ html
				tbsContainer: [ html
						tbsNavbarHeader: [ html image
								tbsPullLeft;
								style: 'padding: 10px;';
								url: WATychoFileLibrary / #brandLogoPng;
								sourceSet: (WATychoFileLibrary / #brandLogo2xPng) printString , ' 2x'.
							html tbsNavbarBrand with: 'Tycho' ].
					html tbsNavbarText
						tbsPullRight;
						with: [ self renderNavBarLinksOn: html ] ] ]