rendering
renderSession: each on: html
	^ html
		listItem: [ html anchor
				callback: [ self showDetailsOfSession: each ];
				with: each id.
			html text: ' (' , each description , ') '.
			html anchor
				callback: [ self removeSession: each ];
				with: '[remove]' ]