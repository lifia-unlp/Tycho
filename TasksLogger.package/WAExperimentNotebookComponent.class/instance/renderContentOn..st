rendering
renderContentOn: html
	self renderNavigationbarOn: html.
	self isOpen
		ifTrue: [ self renderIndexPageOn: html ]
		ifFalse: [ self renderLoginPageOn: html ]