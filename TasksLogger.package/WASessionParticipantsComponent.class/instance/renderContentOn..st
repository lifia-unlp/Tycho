rendering
renderContentOn: html
	"Displays the component to view and configure the session participants as a table on a HTML document"
			
	html tbsTable: [ 
		html tableHead: [ 
			html tableHeading: 'User'.
			html tableHeading: 'Protocol'.
			html tableHeading: 'Access code'.
			html tableHeading: 'Actions' ].
		html tableBody: [ 
			session participants do: [ :participant | 
				self renderParticipant: participant on: html ] ] ]