rendering
renderMainContentOn: html
	html heading level3
		with: [ html render: (TaskGlyphIcon on: self task).
			html space.
			html text: self task name ].
	html
		tbsForm: [ self renderCommonInfoOn: html.
			self renderConfigurationPropertiesOn: html.
			html tbsButton
				callback: [ self save ];
				value: 'Save changes' ]