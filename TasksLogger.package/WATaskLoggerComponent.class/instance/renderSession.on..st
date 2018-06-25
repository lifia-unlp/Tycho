rendering
renderSession: each on: html
	^ html
		tbsListGroupItem: [ html text: '#' , each id , ' (' , each description , ') '.
			html anchor
				callback: [ self showDetailsOfSession: each ];
				with: '[details]'.
			html anchor
				callback: [ self removeSession: each ];
				with: '[remove]' ]