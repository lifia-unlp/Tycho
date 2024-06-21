rendering
renderCancelButtonOn: html
	"Displays the button to cancel the changes applied to the bot task"

	html anchor beButton
		class: 'btn-default';
		callback: [ self cancel ];
		with: 'Cancel'