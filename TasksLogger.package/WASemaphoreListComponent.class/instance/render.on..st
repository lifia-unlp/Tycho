rendering
render: aSemaphore on: html
	editedSemaphore == aSemaphore
		ifFalse: [ html
				text: aSemaphore status;
				space.
			html anchor
				callback: [ editedSemaphore := aSemaphore ];
				with: [ html tbsGlyphIcon iconPencil ] ]
		ifTrue: [ html
				form: [ html textInput on: #status of: self.
					html space.
					html tbsButton
						callback: [ self accept ];
						beExtraSmall;
						with: 'Accept'.
					html space.
					html tbsButton
						callback: [ self cancel ];
						beExtraSmall;
						with: 'Cancel' ] ]