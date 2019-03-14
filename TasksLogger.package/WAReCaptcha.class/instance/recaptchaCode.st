accessing
recaptchaCode
	^ ('recaptcha.txt' asFileReference readStream contents splitOn: ',') first