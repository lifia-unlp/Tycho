request handlers
updateVariable: jsonRepresentationOfAnExistingVariable for: protocolId
	| payload variable |
	monitor
		critical: [ payload := NeoJSONReader fromString: jsonRepresentationOfAnExistingVariable.
			variable := self store variable: (payload at: 'id') for: protocolId.
			variable value: (payload at: 'value').
			^ 'ok' ]