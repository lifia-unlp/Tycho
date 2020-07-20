rendering-protocols-weight
renderProtocolsWeight: html
	| copyProtocols |
	copyProtocols := self experimentSession protocols deepCopy.
	self
		renderHeading: html
		id: 'editProtocolsWeight'
		text: 'Weight of Protocols'
		toggle: 'renderProtocolWeight'.
	html div
		id: 'renderProtocolWeight';
		style: 'display:none';
		with: [ html
				form: [ self generateInputsProtocolsWeight: html.
					self generateErrorMessage: html.
					html submitButton
						callback: [ self validateWeight
								ifFalse: [ self restoreWeights: copyProtocols ]
								ifTrue: [ self store savePending ] ];
						id: 'submitWeights';
						with: 'Send Weights' ] ]