rendering-protocol
renderProtocolSelectorOn: html
	"Displays the form that includes a dropdown list to select the protocol assigned to the bot"					

	html tbsForm: [ 
		html tbsFormGroup
			class: 'form-inline';
			with: [ 
				html select tbsFormControl beOptional
					optionalLabel: '- Select Protocol -';
					id: #protocolSelect;
					list: self protocols;
					selected: self bot protocol;
					labels: [ :protocol| protocol name ];
					callback: [ :protocol | self assignProtocol: protocol ].	
				html space.
				html tbsSubmitButton with: 'Assign protocol'.
				self error ifNotNil: [ 
					html space.
					html span 
						class: 'error text-danger';
						with: self error
				 ]
			]		
	 ].