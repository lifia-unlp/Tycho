rendering
renderOkButtonOn: html
	"Displays the button to save the changes applied to the bot"
	
	html anchor beButton
		class: 'btn-success';
		callback: [ self save ];
		with: 'Save'