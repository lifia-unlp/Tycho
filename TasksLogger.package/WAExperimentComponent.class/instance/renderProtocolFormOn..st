rendering-protocols
renderProtocolFormOn: html
	"Displays the form to select a protocol to include in the experiment"

	html tbsForm: [ 
		html tbsFormGroup
			class: 'form-inline';
			with: [ 
				html select tbsFormControl beOptional
					optionalLabel: '- Select Protocol -';
					id: #protocolSelect;
					list: self session account protocols;
					labels: [ :prototype | prototype name ];
					callback: [ :protocol | self selectedProtocol: protocol ].
				html space.
				html tbsSubmitButton 
					callback: [ self cloneProtocol: self selectedProtocol ];
					with: 'Add selected'.
				html space.
				html tbsSubmitButton
					callback: [ self addEmptyProtocol ];
					with: 'Add empty' 
			]		
	 ].
	