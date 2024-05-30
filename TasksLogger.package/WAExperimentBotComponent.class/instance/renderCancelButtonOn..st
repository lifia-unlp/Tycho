rendering
renderCancelButtonOn: html
	"Displays the button to cancel the changes applied to the experiment"

	html anchor beButton
		class: 'btn-default';
		callback: [ self cancel ];
		with: 'Cancel'