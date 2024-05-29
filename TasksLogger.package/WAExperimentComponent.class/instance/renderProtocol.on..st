rendering-protocols
renderProtocol: protocol on: html
	"Displays the data of the given protocol, as well as the individual actions on the protocol, in a HTML table row"
	
	html tableRow: [ 
		html
			tableData: [ 
				html anchor
					callback: [ self editProtocol: protocol ];
					with: protocol name ];
			tableData: protocol id;
			tableData: [ 
				html anchor
					callback: [ self editProtocol: protocol ];
					with: [ html tbsGlyphIcon iconPencil title: 'Edit this protocol' ].
				html space.
				html anchor
					callback: [ self deleteProtocol: protocol ];
					with: [ html tbsGlyphIcon iconTrash title: 'Delete this protocol' ].
				html space.
				html anchor
					callback: [ self printHandoutsFor: protocol ];
					with: [ html tbsGlyphIcon iconPrint title: 'Print handouts' ] 
			] 
		]