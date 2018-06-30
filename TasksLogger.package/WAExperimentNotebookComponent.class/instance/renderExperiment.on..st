rendering experiments
renderExperiment: each on: html
	html
		tableRow: [ html
				tableData: each id;
				tableData: each notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfExperiment: each ];
						tbsPullRight;
						with: 'Details' ];
				tableData: [ html anchor
						callback: [ self showResultsOfExperiment: each ];
						tbsPullRight;
						with: 'Results' ];
				tableData: [ html anchor
						callback: [ self exportAsJson: each ];
						tbsPullRight;
						with: 'Export' ] ]