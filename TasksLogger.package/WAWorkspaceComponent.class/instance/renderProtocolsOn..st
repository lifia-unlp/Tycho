rendering
renderProtocolsOn: html
	html
		tbsFormGroup: [ html label: 'Protocols'.
			self workspace protocols
				ifNotEmpty: [ :protocols | protocols do: [ :protocol | html paragraph: protocol name ] ]
				ifEmpty: [ html paragraph: 'There are no protocols in this Workspace' ] ].
	self renderProtocolsInputOn: html