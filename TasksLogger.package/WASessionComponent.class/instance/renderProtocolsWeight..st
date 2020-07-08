rendering-protocols-weight
renderProtocolsWeight: html
	| copyProtocols|
	copyProtocols := self experimentSession protocols deepCopy .
	self renderHeading: html id: 'editProtocolsWeight' text: 'Weight of Protocols' toggle: 'renderProtocolWeight'.
	html div
		id: 'renderProtocolWeight';
		style: 'display:none';
		with: [ html
				form: [ self generateInputsProtocolsWeight: html.
					html div
						id: #idErrorWeight;
						class: 'alert alert-danger';
						attributeAt: 'hidden' put: 'hidden';
						with: 'The sum of the assigned weights should give 100%.'.
					html submitButton callback: [ self validateWeight ifFalse: [ self restoreWeights: copyProtocols ] ifTrue: [ self store savePending ] ];
						id: 'submitWeights';
						with: 'Send Weights' ] ]