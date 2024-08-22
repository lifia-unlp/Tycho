rendering-sessions
renderSessionListOn: html
	"Renders the sessions list of the experiment as an HTML table"
	
	html tbsTable: [ 
		html tableHead: [ 
			html
				tableHeading: 'Session ID';
				tableHeading: 'Status';
				tableHeading: 'Start time';
				tableHeading: 'Duration';				
				tableHeading: 'Actions' ].
		html tableBody: [
			self experiment sessions do: [ :session | self renderSession: session on: html ] ] ]