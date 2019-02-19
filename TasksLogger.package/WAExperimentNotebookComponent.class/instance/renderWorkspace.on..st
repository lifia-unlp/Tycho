rendering-protocols
renderWorkspace: aWorkspace on: html
	html
		tableRow: [ html
				tableData: aWorkspace name;
				tableData: aWorkspace notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfProtocol: aWorkspace ];
						tbsPullRight;
						with: 'Details' ];
				tableData: [ html anchor
						callback: [ self showResultsOfExperiment: aWorkspace ];
						tbsPullRight;
						with: 'Results' ];
				tableData: [ html anchor
						callback: [ self exportAsFuel: aWorkspace ];
						tbsPullRight;
						with: 'Export (fuel)' ];
				tableData: [ html anchor
						callback: [ self exportAsJson: aWorkspace ];
						tbsPullRight;
						with: 'Export (JSON)' ] ]