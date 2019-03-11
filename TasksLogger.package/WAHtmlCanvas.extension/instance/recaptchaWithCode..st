*TasksLogger
recaptchaWithCode: aCode
	self div
		class: 'g-recaptcha';
		attributeAt: 'data-sitekey' put: aCode