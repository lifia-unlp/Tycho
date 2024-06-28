rendering
renderOkButtonOn: html
	"Displays the button to save the changes applied to the bot instruction"
		
	html tbsButton
		beSuccess;
		callback: [ self save ];
		value: 'Save'.