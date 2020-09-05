rendering-protocols-strategy
renderStrategyExperimentOn: html
	| group strategies divIdPrincipal |
	strategies := ExperimentSessionStrategy listOfStrategies.
	divIdPrincipal := 'renderStrategyExperiment'.
	self renderHeading: html id: 'editStrategy' text: 'Strategy' toggle: divIdPrincipal.
	html div id:'renderStrategyExperimentActual'; with:[html strong: 'Current Strategy:'. html space. html tbsBadge: (self experimentSession strategyProtocols name)].
	html div id: divIdPrincipal;	style: 'display:none';
	with:[
		html break.
		html
			form: [
				group := html radioGroup.
				strategies
					do: [ :strategy | 
						group radioButton
							selected: (self experimentSession isActualStrategy: strategy);
							callback:
									[ self changeStrategy: strategy ].
						html space.
						html text: strategy name.
						html space ].
				html tbsButton callback:[ self store savePending ];beDefault;
						beExtraSmall; with: 'Save' .  ]
	]