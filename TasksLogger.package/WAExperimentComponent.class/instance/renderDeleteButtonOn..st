rendering
renderDeleteButtonOn: html
	html horizontalRule.
	html
		tbsForm: [ html tbsButton
				beExtraSmall;
				beDanger;
				callback: [ self deleteExperiment.
					self answer ];
				value: 'Delete this protocol'. ]