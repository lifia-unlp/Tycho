rendering
renderForgotPasswordLinkOn: html
	html paragraph
		class: #forgotPasswordLink;
		with: [ html anchor
				callback: [ self callForgotPassword ];
				with: 'I forgot my password' ]