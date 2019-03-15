rendering
renderHeadingOn: html
	html div
		class: #splash;
		with: [ html
				tbsContainer: [ html
						tbsRow: [ html
								tbsColumn: [ html image
										url: WATychoFileLibrary / #homeLogoPng;
										sourceSet: (WATychoFileLibrary / #homeLogo2xPng) printString , ' 2x'.
									html
										heading: 'Tycho';
										paragraph: 'Design and run remote user tests'.
									self renderCallToActionButtonsOn: html ]
								mediumSize: 12 ] ] ]