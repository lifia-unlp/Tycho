rendering-protocols-strategy
renderStrategyExperimentOn: html
	| group strategies divIdPrincipal |
	strategies := ExperimentSessionStrategy listOfStrategies.
	divIdPrincipal := 'renderStrategyExperiment'.
	self renderHeading: html id: 'editStrategy' text: 'Strategy' toggle: divIdPrincipal.
	html div id:'renderStrategyExperimentActual'; with:[html tbsBadge: 'Actual Strategy: ' , (self experimentSession strategyProtocols name)].
	html div id: divIdPrincipal;	style: 'display:none';
	with:[
		html
			form: [
				group := html radioGroup.
				strategies
					do: [ :strategy | 
						group radioButton
							selected: (self experimentSession isActualStrategy: strategy);
							callback:
									[ self changeStrategy: strategy ].
						html text: strategy name.
						html space ].
				html submitButton with: 'Save' ]
	]