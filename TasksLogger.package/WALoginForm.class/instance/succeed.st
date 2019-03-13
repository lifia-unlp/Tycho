controlling
succeed
	| accountOrNil |
	accountOrNil := self allUsers detect: [ :savedAccount | savedAccount email = self email trimmed asLowercase ].
	self session account: accountOrNil.
	self answer: accountOrNil