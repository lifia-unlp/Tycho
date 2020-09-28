rendering
renderMainContentOn: html
	self protocolIsEditable
		ifFalse: [ html tbsAlert beWarning with: [ html text: 'You cannot add new tasks or change the order of these because at least one execution of this protocol has already taken place.' ] ].
	self
		renderProtocolDetailsOn: html;
		renderWorkflowOn: html;
		renderAvailableTaskPrototypesOn: html;
		renderDeleteButtonOn: html;
		renderButtonsOn: html