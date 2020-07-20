rendering-protocols-weight
generateInputsProtocolsWeight: html
	self experimentSession protocols
		do: [ :protocol | 
			html
				tbsRow with: [ 
					html tbsColumn:[html label: protocol name.] mediumSize: 3.
					html tbsColumn: [ html numberInput
						value: protocol dataExecution weight;
						callback: [ :value | self changeWeight: value toProtocol: protocol ];
						id: 'protocolWeightValue';
						"onChange: 'validateWeight()';"
						size: 7;
						attributeAt:'step' put:'0.01';
						pattern: '[-+]?[0-9]*[.,]?[0-9]+'.
						html break ] mediumSize:9. 
				] 
		]