rendering
rendeDisplayingOn: html
	html heading
		level: headingLevel;
		with: [ html text: label.
			html space.
			html anchor
				callback: [ editing := true ];
				with: [ html tbsGlyphIcon iconPencil ] ].
	html preformatted
		class: 'inplaceeditor';
		with: self valueFromSubject