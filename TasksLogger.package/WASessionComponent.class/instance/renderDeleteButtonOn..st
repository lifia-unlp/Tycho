rendering
renderDeleteButtonOn: html
	html horizontalRule.
	html
		tbsForm: [ html tbsButton
				beExtraSmall;
				beDanger;
				callback: [ self deleteSession.
					self answer ];
				value: 'Delete this session' ]