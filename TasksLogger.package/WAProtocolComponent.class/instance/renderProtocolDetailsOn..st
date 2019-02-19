rendering
renderProtocolDetailsOn: html
	html heading: 'Experiment ' , self protocol name.
	html
		tbsForm: [ self
				renderNameInputOn: html;
				renderNotesInputOn: html.
			html tbsButton
				callback: [ self answer ];
				value: 'Save changes' ]