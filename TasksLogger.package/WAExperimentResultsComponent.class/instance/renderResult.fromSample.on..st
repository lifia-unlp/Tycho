rendering
renderResult: each fromSample: sample on: html
	html
		tableRow: [ html
				tableData: sample id;
				tableData: each task name;
				tableData: (NeoJSONWriter toStringPretty: each properties);
				tableData: (NeoJSONWriter toStringPretty: each koboldReport) ]