rendering
renderCheckboxFor: property on: html
	^ html
		tbsFormGroup: [ html
				tbsRow: [ html
						tbsColumn: [ html label
								for: 'prop' , property name;
								with: [ html text: property name uncameled ].
							html checkbox 
								style: 'transform: scale(2); margin-left: 1em ';
								on: #value of: property ]
						mediumSize: 12.
					html
						tbsColumn: [ html tbsHelpBlock: property description ]
						mediumSize: 12 ] ]