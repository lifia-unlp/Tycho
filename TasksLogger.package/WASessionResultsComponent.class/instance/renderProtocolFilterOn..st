rendering-filters
renderProtocolFilterOn: html
	html
		tbsButtonGroup: [ html tbsDropdownButton
				beDefault;
				with: [ html
						text: (selectedProtocol ifNil: [ 'Access code: All' ] ifNotNil: [ 'Access code: ', selectedProtocol id ]);
						tbsCaret ].
			html
				tbsDropdownMenu: [ (self filteredProtocolSampleTaskTuples collect: [ :each | each first ]) asSet
						do: [ :each | 
							html
								tbsDropdownMenuItem: [ html anchor
										callback: [ selectedProtocol := each ];
										with: each id ] ].
					html
						tbsDropdownMenuItem: [ html anchor
								callback: [ self selectProtocol: nil ];
								with: 'All' ] ] ].
