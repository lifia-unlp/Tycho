rendering-protocols
renderProtocolsOn: html
	html
		tbsFormGroup: [ html heading
				level: 3;
				with: 'Protocols'.
			self session protocols
				ifNotEmpty: [ :protocols | 
					html
						tbsTable: [ html
								tableHead: [ html
										tableHeading: 'Name';
										tableHeading: 'Id';
										tableHeading: '' ].
							html
								tableBody: [ protocols do: [ :protocol | self renderProtocol: protocol on: html ] ] ] ]
				ifEmpty: [ html paragraph: 'There are no protocols in this session' ] ].
	self renderProtocolsInputOn: html