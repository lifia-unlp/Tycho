rendering designs
renderDesign: each on: html
	html
		tableRow: [ html
				tableData: each id;
				tableData: each notes;
				tableData: [ html anchor
						callback: [ self showDetailsOfDesign: each ];
						tbsPullRight;
						with: 'Details' ];
				tableData: [ html anchor
						callback: [ self newExperimentWithDesign: each ];
						tbsPullRight;
						with: 'Use' ];
				tableData: [ html anchor
						callback: [ self removeSession: each ];
						tbsPullRight;
						with: 'Remove' ] ]