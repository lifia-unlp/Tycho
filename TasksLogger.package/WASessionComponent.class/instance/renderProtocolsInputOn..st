rendering-protocols
renderProtocolsInputOn: html
	html tbsFormGroup
		class: 'form-inline';
		with: [ html select tbsFormControl beOptional
				optionalLabel: '- Select Protocol -';
				id: #protocolSelect;
				list: self store templateProtocols;
				labels: [ :prototype | prototype name ];
				callback: [ :protocol | self cloneProtocol: protocol ].
			html space.
			html tbsSubmitButton with: 'Clone selected'.
			html space.
			html tbsSubmitButton
				disabled;
				callback: [ self addEmptyProtocol ];
				with: 'Add empty' ]