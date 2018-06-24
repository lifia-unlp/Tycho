rendering
renderCompletedTasksResultsOn: html
	html heading
		level: 2;
		with: 'Results of completed tasks'.
	html
		unorderedList: [ self getCompletedTasksResults
				do: [ :each | 
					html
						listItem: [ html
								text:
									each task id , ' ' , each task description , ' (' , each task componentClassname , ') -> ' , each milliseconds printString
										, ' ms - SUS Score ', each susResponse score printString, ' '.
							html anchor
								callback: [ self showDetailsOfTaskResult: each ];
								with: '[see details]' ] ] ]