rendering
renderActionsMenuOn: html
	| menu |
	self isOpen
		ifFalse: [ ^ self ].
	menu := [ html
		tbsDropdownMenuItem: [ html anchor
				callback: [ self changeAccessCode ];
				with: 'Change access code' ] ].
	html tbsButtonGroup
		with: [ html tbsDropdownButton
				beNavbarButton;
				beDefault;
				with: [ html
						text: 'Admin';
						tbsCaret ].
			html
				tbsDropdownMenu: menu;
				space ]