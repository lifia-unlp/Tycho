private - rendering
renderResponsesOf: tasksResults on: html
	(self questionaireToDictionaryAnswerResponsesFor: tasksResults)
		keysAndValuesDo: [ :question :responses | 
			html tbsPanel
				beInfo;
				with: [ html tbsPanelHeading: [ html heading level4 with: [ html strong: question ] ].
					html tbsPanelBody
						style: 'max-height: 10em; overflow: auto';
						with: [ responses
								do: [ :r | 
									html text: r translateToUppercase.
									html break ] ] ] ]