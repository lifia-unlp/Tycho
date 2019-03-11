rendering-form
renderButtonsOn: html
	"Setting the 'Cancel' button's type as 'button' will prevent it from triggering when 'Enter' is pressed"

	html anchor beButton
		callback: [ self cancel ];
		with: 'Cancelar'.
	html space.
	html tbsSubmitButton beSuccess
		callback: [ self save ];
		with: 'Guardar'