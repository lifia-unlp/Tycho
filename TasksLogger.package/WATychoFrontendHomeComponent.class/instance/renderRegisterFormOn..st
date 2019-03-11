rendering
renderRegisterFormOn: html
	html tbsRow
		id: #homeRegister;
		class: #homeRegister;
		with: [ html
				tbsColumn: [ html heading level3 with: 'Get an account and start testing' ] mediumSize: 6;
				tbsColumn: [ html render: registerForm ] mediumSize: 6 ]