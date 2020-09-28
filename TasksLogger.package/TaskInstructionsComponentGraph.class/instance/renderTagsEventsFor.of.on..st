rendering
renderTagsEventsFor: tasksResults of: aTask on: html
	| tagListenersEnabled methodName captureEventTag titlePanel |
	tagListenersEnabled := tagListeners select: [ :tag | aTask atProperty: tag ].
	aTask captureEventsTags
		do: [ :captureTag | 
			html
				tbsColumn: [ captureEventTag := self splitCaptureEventsTag: captureTag.
					captureEventTag
						ifNotEmpty: [ titlePanel := 'Captured events for tag ->  (' , (captureEventTag at: 'url') , ' - ' 	, (captureEventTag at: 'cssSelector'), ')'.
							self
								collapsePanelWithId: captureTag onlyLetters , aTask id asString
								title: titlePanel
								body: [ tagListenersEnabled
										do: [ :tag | 
											methodName := ('render' , tag asCamelCase , 'Of:tag:for:on:') asSymbol.
											self
												perform: methodName
												with: aTask
												with: captureEventTag
												with: tasksResults
												with: html ] ]
								on: html ] ]
				mediumSize: 12 ]