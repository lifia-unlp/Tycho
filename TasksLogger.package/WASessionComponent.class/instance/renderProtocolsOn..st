rendering-protocols
renderProtocolsOn: html
	html
		tbsFormGroup: [ html label: 'Protocols'.
			self session protocols
				ifNotEmpty: [ :protocols | 
					html
						tbsTable: [ html
								tableHead: [ html
										tableHeading: 'Name';
										tableHeading: 'Id' ].
							html tableBody: [ protocols do: [ :protocol | self renderProtocol: protocol on: html ] ] ] ]
				ifEmpty: [ html paragraph: 'There are no protocols in this session' ] ].
	self renderProtocolsInputOn: html