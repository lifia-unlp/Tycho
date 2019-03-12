rendering-form
renderPasswordInputOn: html
	| invalid |
	invalid := self isInvalid: #password.
	html tbsFormGroup
		class: #error if: invalid;
		with: [ html label
				for: #password;
				with: 'Choose a password'.
			html passwordInput tbsFormControl
				id: #password;
				on: #password of: self.
			self renderErrorsFor: #password if: invalid on: html ]