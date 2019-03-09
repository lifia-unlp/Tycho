rendering
renderSampleSelectorOn: html
	html
		tbsButtonGroup: [ html tbsDropdownButton
				beDefault;
				with: [ html
						text: (selectedSample ifNil: [ 'Select a sample ' ] ifNotNil: [ selectedSample id ]);
						tbsCaret ].
			html
				tbsDropdownMenu: [ selectedProtocol samples
						do: [ :each | 
							html
								tbsDropdownMenuItem: [ html anchor
										callback: [ self selectSample: each ];
										with: each id ] ] ];
				space ]