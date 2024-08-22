rendering
renderContentOn: html
	"Displays the component to view the session participants as a table on a HTML document"
			
	html tbsTable: [ 
		html tableHead: [ 
			html tableHeading: 'User'.
			html tableHeading: 'Protocol'.
			html tableHeading: 'Access code'.
			html tableHeading: 'Start time'.
			html tableHeading: 'Duration'.
			html tableHeading: 'Status'.
			html tableHeading: 'Tasks completed' ].
		html tableBody: [ 
			self participants do: [ :participant | 
				self renderParticipant: participant on: html ] ] ]