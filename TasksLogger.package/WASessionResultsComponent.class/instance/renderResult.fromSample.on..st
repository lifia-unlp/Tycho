rendering
renderResult: each fromSample: sample on: html
self halt.
	html
		tableRow: [ html
				tableData: each task name;
				tableData: each startTime printString;
				tableData: (each ellapsedMs / 1000) asFloat printString;  
				tableData: (NeoJSONWriter toStringPretty: each properties);
				tableData: [ html anchor
						callback: [ self showKoboldEventsFor: each ];
						with: each koboldReport size asString ] ]