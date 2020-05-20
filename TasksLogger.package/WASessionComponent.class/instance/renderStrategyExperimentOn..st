rendering-protocols
renderStrategyExperimentOn: html
	| group strategies |
	strategies := ExperimentSessionStrategy listOfStrategies.
	html
		form: [ html heading level3 with: 'Strategy'.
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