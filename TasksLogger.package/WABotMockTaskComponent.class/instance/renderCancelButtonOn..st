rendering
renderCancelButtonOn: html
	"Displays the button to cancel the changes applied to the bot task"

	html tbsButton
		callback: [ self cancel ];
		value: 'Cancel'.