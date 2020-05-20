rendering-protocols
renderProtocolsFormOn: html
	self renderStrategyExperimentOn: html.
	html
		tbsForm: [ self
				renderProtocolsOn: html;
				renderVariablesOn: html;
				renderSemaphoresOn: html ]