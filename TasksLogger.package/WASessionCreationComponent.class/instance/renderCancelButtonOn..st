rendering
renderCancelButtonOn: html
	"Displays the button to cancel the changes applied to the session"

	html anchor beButton
		class: 'btn-default';
		callback: [ self cancel ];
		with: 'Cancel'