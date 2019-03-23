rendering-protocols
renderProtocolsInputOn: html
	html tbsFormGroup
		class: 'form-inline';
		with: [ html select tbsFormControl beOptional
				optionalLabel: '- Select Protocol -';
				id: #protocolSelect;
				list: self session account protocols;
				labels: [ :prototype | prototype name ];
				callback: [ :protocol | self cloneProtocol: protocol ].
			html space.
			html tbsSubmitButton with: 'Add selected'.
			html space.
			html tbsSubmitButton
				callback: [ self addEmptyProtocol ];
				with: 'Add empty' ]