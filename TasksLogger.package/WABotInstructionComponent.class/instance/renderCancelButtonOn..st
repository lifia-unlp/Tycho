rendering
renderCancelButtonOn: html
	"Displays the button to cancel the changes applied to the bot instruction"

	html tbsButton
		callback: [ self cancel ];
		value: 'Cancel'.