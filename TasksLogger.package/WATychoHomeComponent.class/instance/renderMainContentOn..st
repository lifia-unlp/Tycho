rendering
renderMainContentOn: html
	self session isLoggedIn 
		ifTrue: [ self renderIndexPageOn: html ]
		ifFalse: [ self renderLoginPageOn: html ]