rendering
rendeDisplayingOn: html
	html heading
		level: headingLevel;
		with: [ html text: label.
			html space.
			html anchor
				callback: [ editing := true ];
				with: [ html tbsGlyphIcon iconPencil ] ].
	(textArea
		ifFalse: [ html paragraph ]
		ifTrue: [ html preformatted ]) with: (subject perform: getSelector)