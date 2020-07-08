rendering-protocols
renderProtocolsFormOn: html
	self experimentSession abTesting
		ifTrue: [ self renderStrategyExperimentOn: html.
			self renderProtocolsWeight: html ].
	self renderActiveAbTesting: self experimentSession on:html.
	html
		tbsForm: [ self
				renderProtocolsOn: html;
				renderVariablesOn: html;
				renderSemaphoresOn: html ]