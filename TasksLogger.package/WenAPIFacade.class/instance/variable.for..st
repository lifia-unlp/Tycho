request handlers
variable: id for: aProtocolId
	| resp json |
	monitor
		critical: [ json := nil.
			resp := self store variable: id for: aProtocolId.
			resp
				ifNotNil: [ json := RestResponseWriter new variableAsJson: resp.
					json ].
			^ json ]