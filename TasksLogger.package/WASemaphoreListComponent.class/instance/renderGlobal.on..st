rendering
renderGlobal: aSemaphore on: html
	html
		form: [ aSemaphore isStopped
				ifTrue: [ html tbsButton
						beLabeled;
						beDanger;
						beExtraSmall;
						callback: [ self makeSemaphoreGo: aSemaphore ];
						with: [ html text: 'Stop'.
							html tbsButtonLabelRight: [ html tbsGlyphIcon iconOff ] ] ]
				ifFalse: [ html tbsButton
						beLabeled;
						beSuccess;
						beExtraSmall;
						callback: [ self makeSemaphoreStop: aSemaphore ];
						with: [ html tbsButtonLabel: [ html tbsGlyphIcon iconOff ].
							html text: 'Go' ] ] ]