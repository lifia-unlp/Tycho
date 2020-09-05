rendering-protocols-weight
renderProtocolsWeight: html
	| copyProtocols idToggle |
	copyProtocols := self experimentSession protocols deepCopy.
	idToggle := 'renderProtocolWeight'.
	self
		renderHeading: html
		id: 'editProtocolsWeight'
		text: 'Weight of Protocols'
		toggle: idToggle.
	html div
		id: 'renderProtocolWeight';
		style: 'display:none';
		with: [ html
				form: [ self generateInputsProtocolsWeight: html.
					self generateErrorMessage: html.
					html tbsButton
						beDefault;
						beExtraSmall;
						callback: [ self validateWeight
								ifFalse: [ self restoreWeights: copyProtocols ]
								ifTrue: [ self store savePending ] ];
						id: 'submitWeights';
						with: 'Save'.
					html space.
					html tbsButton
						beDefault;
						beExtraSmall;
						callback: [ self restoreWeights: copyProtocols ];
						with: 'Cancel' ] ]