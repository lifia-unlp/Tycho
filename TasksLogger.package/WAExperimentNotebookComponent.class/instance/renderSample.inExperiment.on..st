rendering-samples
renderSample: sample inExperiment: experiment on: html
	html
		tableRow: [ html
				tableData: sample id;
				tableData: experiment name;
				tableData: sample taskResults size printString, '/', experiment tasks size printString;
				tableData: sample lastActivityTimestamp  printString]