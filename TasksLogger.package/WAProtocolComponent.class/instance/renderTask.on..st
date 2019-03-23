rendering-tasks
renderTask: aTask on: html
	html listItem
		passenger: aTask;
		with: [ html tbsPanel beDefault
				with: [ html
						tbsPanelHeading: [ html render: (TaskGlyphIcon on: aTask).
							html space.
							html text: aTask name ].
					html
						tbsPanelBody: [ self renderTask: aTask propertiesOn: html.
							self renderTask: aTask actionsOn: html ] ] ]