rendering
renderContentOn: html
	"Displays the component to view the tasks results of a session participant as a table on a HTML document"
			
	html tbsTable 
		class: 'table-condensed';
		style: 'font-size: 0.9em; background-color: #eeeeee';
		with: [ 
			html tableHead: [ 
				html tableHeading: '#'.
				html tableHeading: 'Task'.
				html tableHeading: 'Type'.
				html tableHeading: 'Status'.
				html tableHeading: 'Start time'.
				html tableHeading: 'Duration'.
				html tableHeading: 'Properties' ].
			html tableBody: [ 
				self tasksResults withIndexDo: [ :taskResult :index | 
					self renderTaskResult: taskResult withNumber: index on: html ] ] ]