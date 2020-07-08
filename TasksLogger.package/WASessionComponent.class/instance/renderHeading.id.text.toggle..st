rendering
renderHeading: html id: anId text: aText toggle: aToggleId
	html heading level4
		with: [ html text: aText.
			html space.
			html anchor 	id: anId; with: [ html tbsGlyphIcon iconPencil; onClick: ((html jQuery: '#',aToggleId) effect toggle; perform: #fade) ] 
			].