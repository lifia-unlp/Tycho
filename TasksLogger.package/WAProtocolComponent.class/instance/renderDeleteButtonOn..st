rendering
renderDeleteButtonOn: html
	self protocolIsEditable
		ifTrue: [ html horizontalRule.
			html
				tbsForm: [ html tbsButton
						beExtraSmall;
						beDanger;
						callback: [ self deleteProtocol.
							self answer ];
						value: 'Delete this protocol' ] ]