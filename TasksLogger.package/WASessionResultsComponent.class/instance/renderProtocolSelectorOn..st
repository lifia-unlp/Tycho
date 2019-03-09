rendering
renderProtocolSelectorOn: html
	html
		tbsButtonGroup: [ html tbsDropdownButton
				beDefault;
				with: [ html
						text: (selectedProtocol ifNil: [ 'Select a protocol ' ] ifNotNil: [ selectedProtocol id ]);
						tbsCaret ].
			html
				tbsDropdownMenu: [ session protocols
						do: [ :each | 
							html
								tbsDropdownMenuItem: [ html anchor
										callback: [ self selectProtocol: each ];
										with: each id ] ] ];
				space ]