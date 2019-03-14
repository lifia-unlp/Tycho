rendering
renderMainContentOn: html
	html heading: 'Task configuration'.
	html
		tbsForm: [ self renderCommonInfoOn: html.
			self renderConfigurationPropertiesOn: html.
			html tbsButton
				callback: [ self save ];
				value: 'Save changes' ]