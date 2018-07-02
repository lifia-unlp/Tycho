rendering
renderTasksListOn: html
	html
		tbsListGroup: [ experiment tasks
				do: [ :task | 
					html
						tbsListGroupItem: [ html
								text: 'Name: ' , task name;
								break;
								text: 'Notes: ' , task notes;
								break;
								text: 'Component class: ' , task componentClassname;
								break ] ] ]