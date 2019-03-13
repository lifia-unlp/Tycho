rendering
renderRegisterLinkOn: html
	html paragraph
		class: #forgotPasswordLink;
		with: [ html text: 'I don''t have an account. '.
			html anchor
				url: self session homeUrl greaseString , '#homeRegister';
				with: 'Create one now' ]