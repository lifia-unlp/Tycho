rendering-protocols
renderProtocolListOn: html
	"Renders the protocols list of the experiment as an HTML table"
			
	html tbsTable: [ 
		html tableHead: [ 
			html
				tableHeading: 'Protocol name';
				tableHeading: 'Access code';
				tableHeading: 'Actions' ].
		html tableBody: [
			self experiment protocols do: [ :protocol | self renderProtocol: protocol on: html ] ] 
	]