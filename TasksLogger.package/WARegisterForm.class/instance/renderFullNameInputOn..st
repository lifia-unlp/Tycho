rendering-form
renderFullNameInputOn: html
	| invalid |
	invalid := self isInvalid: #fullName.
	html tbsFormGroup
		class: #error if: invalid;
		with: [ html label
				for: #fullName;
				with: 'Nombre'.
			html textInput tbsFormControl
				id: #fullName;
				on: #fullName of: self.
			self renderErrorsFor: #fullName if: invalid on: html ]