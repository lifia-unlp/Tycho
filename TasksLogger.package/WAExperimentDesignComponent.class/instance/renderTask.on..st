rendering
renderTask: each on: html
	html text: '#' , each id , ' ' , each description , ' (' , each componentClassname , ') '.
	html anchor
		callback: [ self showDetailsOfTask: each ];
		with: '[details]'.
	html space.
	html anchor
		callback: [ self removeTask: each ];
		with: '[remove]'