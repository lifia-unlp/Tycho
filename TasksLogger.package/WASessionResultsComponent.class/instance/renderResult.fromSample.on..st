rendering
renderResult: each fromSample: sample on: html
	html
		tableRow: [ html
				tableData: sample id;
				tableData: each task name;
				tableData: (NeoJSONWriter toStringPretty: each properties);
				tableData: [ html anchor
						callback: [ self showKoboldEventsFor: each ];
						with: each koboldReport size asString ] ]