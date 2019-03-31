rendering-protocols
renderProtocolsFormOn: html
	html
		tbsForm: [ self
				renderProtocolsOn: html;
				renderVariablesOn: html;
				renderSemaphoresOn: html ]