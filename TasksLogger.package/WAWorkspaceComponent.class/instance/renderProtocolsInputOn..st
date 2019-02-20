rendering
renderProtocolsInputOn: html
	html tbsFormGroup
		class: 'form-inline';
		with: [ html select tbsFormControl beOptional
				optionalLabel: '- Select Protocol -';
				id: #protocolSelect;
				list: self store protocols;
				labels: [ :prototype | prototype name ];
				callback: [ :protocol | self workspace addProtocol: protocol ].
			html tbsSubmitButton with: 'Add Protocol' ]