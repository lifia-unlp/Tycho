rendering
renderFieldsOn: html
	justFailed
		ifTrue: [ html script: 'location.href="#"; location.href="#homeRegister";' ].
	self
		renderFullNameInputOn: html;
		renderEmailInputOn: html;
		renderPasswordInputOn: html;
		renderReCaptchaOn: html