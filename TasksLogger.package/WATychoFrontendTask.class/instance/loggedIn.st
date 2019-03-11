initialization
loggedIn
	| accountOrNil |
	accountOrNil := self call: self homeView.
	^ accountOrNil isNotNil