rendering
renderProtocol: protocol sample: sample result: result on: html
	html
		tableRow: [ html
				tableData: sample id;
				tableData: protocol id;
				tableData: result task name;
				tableData: result startTime printString;
				tableData: (result ellapsedMs / 1000) asFloat printString;
				tableData: (NeoJSONWriter toStringPretty: result properties);
				tableData: [ html anchor
						callback: [ self showKoboldEventsFor: result ];
						with: result koboldReport size asString ] ]