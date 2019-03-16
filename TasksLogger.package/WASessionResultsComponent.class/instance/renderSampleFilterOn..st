rendering-filters
renderSampleFilterOn: html
	html
		tbsButtonGroup: [ html tbsDropdownButton
				beDefault;
				with: [ html
						text: (selectedSample ifNil: [ 'Sample: All' ] ifNotNil: [ 'Sample: ', selectedSample id ]);
						tbsCaret ].
			html
				tbsDropdownMenu: [ (self filteredProtocolSampleTaskTuples collect: [ :each | each second ]) asSet
						do: [ :each | 
							html
								tbsDropdownMenuItem: [ html anchor
										callback: [ selectedSample := each ];
										with: each id ] ].
					html
						tbsDropdownMenuItem: [ html anchor
								callback: [ selectedSample := nil ];
								with: 'All' ] ]
				 ]