rendering-protocols
renderProtocol: aProtocol on: html
	html
		tableRow: [ html
				tableData: aProtocol name;
				tableData: aProtocol notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfProtocol: aProtocol ];
						tbsPullRight;
						with: 'Details' ];
				tableData: [ html anchor
						callback: [ self showResultsOfExperiment: aProtocol ];
						tbsPullRight;
						with: 'Results' ];
				tableData: [ html anchor
						callback: [ self exportAsFuel: aProtocol ];
						tbsPullRight;
						with: 'Export (fuel)' ];
				tableData: [ html anchor
						callback: [ self exportAsJson: aProtocol ];
						tbsPullRight;
						with: 'Export (JSON)' ] ]