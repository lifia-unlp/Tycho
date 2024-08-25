rendering
renderTaskResult: aTaskResult withNumber: aNumber on: html
	"Displays the detailed information of a participant task result on a HTML table row"
	
	html tableRow: [ 
		html
			tableData: aNumber;
			tableData: aTaskResult task name;
			tableData: aTaskResult task publicComponentName;
			tableData: [ html tbsLabel beDefault; with: aTaskResult status ];
			tableData: aTaskResult printStartTime;
			tableData: aTaskResult printDuration;
			tableData: '{...}' ]