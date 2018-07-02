rendering
renderMainContentOn: html
	html heading: 'Task configuration'.
	html
		tbsForm: [ self renderCommonInfoOn: html.
			self renderConfigurationPropertiesOn: html.
			html tbsButton
				callback: [ self answer ];
				value: 'Save changes' ]