rendering-protocols
renderProtocol: protocol on: html
	html
		tableRow: [ html
				tableData: protocol name;
				tableData: protocol id;
				tableData: [ html anchor
						callback: [ self deleteProtocol: protocol ];
						with: 'Delete' ] ]