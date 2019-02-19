rendering
renderDeleteButtonOn: html
	html horizontalRule.
	html
		tbsForm: [ html tbsButton
				beExtraSmall;
				beDanger;
				callback: [ self deleteWorkspace.
					self answer ];
				value: 'Delete this workspace'. ]