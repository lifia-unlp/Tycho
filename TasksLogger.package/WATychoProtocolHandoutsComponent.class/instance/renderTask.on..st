rendering
renderTask: each on: html
	| specificRenderingSelector |
	html label: 'Name'.
	html paragraph: each name.
	html label: 'Notes'.
	html paragraph: each notes.
	specificRenderingSelector := ('render' , each componentClassname , 'Configutarion:on:')
		asSymbol.
	(self class canPerform: specificRenderingSelector)
		ifFalse: [ specificRenderingSelector := #renderUIComponentConfiguration:on: ].
	self perform: specificRenderingSelector with: each with: html