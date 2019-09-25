rendering-protocols
renderProtocol: aProtocol on: html
	html
		tableRow: [ html
				tableData: [ html anchor
						callback: [ self showDetailsOfProtocol: aProtocol ];
						with: aProtocol name ];
				tableData: (aProtocol notes size < 100
						ifTrue: [ aProtocol notes ]
						ifFalse: [ (aProtocol notes copyFrom: 1 to: 100) , ' ...' ]);
				tableData: [ html anchor
						callback: [ self showDetailsOfProtocol: aProtocol ];
						with: [ html tbsGlyphIcon iconPencil title: 'Edit this protocol' ].
					html space.
					html anchor
						callback: [ self exportAsFuel: aProtocol ];
						with: [ html tbsGlyphIcon iconSave title: 'Save to file' ].
					html space.
					html anchor
						callback: [ self exportAsJson: aProtocol ];
						with: [ html tbsGlyphIcon iconExport title: 'Export as JSON' ].
						html space.
					html anchor
						callback: [ self printHandoutsFor: aProtocol ];
						target: '_blank';
						with: [ html tbsGlyphIcon iconPrint title: 'Print handouts' ] ] ]