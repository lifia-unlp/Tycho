rendering-semaphores
renderSemaphore: aSemaphore on: html
	html
		tableRow: [ html
				tableData: aSemaphore id;
				tableData: aSemaphore workspace;
				tableData: aSemaphore status;
				tableData: [ html anchor
						callback: [ self showDetailsOfSemaphore: aSemaphore ];
						tbsPullRight;
						with: 'Edit' ] ]