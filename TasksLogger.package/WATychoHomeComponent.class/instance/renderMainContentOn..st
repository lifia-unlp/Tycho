rendering
renderMainContentOn: html
	self isOpen
		ifTrue: [ self renderIndexPageOn: html ]
		ifFalse: [ self renderLoginPageOn: html ]