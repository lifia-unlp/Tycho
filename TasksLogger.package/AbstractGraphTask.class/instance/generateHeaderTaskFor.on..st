global
generateHeaderTaskFor: aTask on: html
	html heading level3
		with: [ html text: aTask name , '. Type: '.
			html small: aTask componentClassname]