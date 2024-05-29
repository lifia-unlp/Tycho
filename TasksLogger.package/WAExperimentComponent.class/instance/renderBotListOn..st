rendering-bots
renderBotListOn: html
	"Renders the bots list of the experiment as an HTML table"
			
	html tbsTable: [ 
		html tableHead: [ 
			html
				tableHeading: 'Bot name';
				tableHeading: 'Bot protocol';
				tableHeading: 'Actions' ].
		html tableBody: [
			self experiment bots do: [ :bot | self renderBot: bot on: html ] ] 
	]