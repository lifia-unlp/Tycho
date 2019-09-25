rendering
renderTask: each on: html
	| specificRenderingSelector |
	html div
		class: 'component-type';
		with: each componentClassname.
	html label: 'Name'.
	html paragraph: each name.
	specificRenderingSelector := ('render' , each componentClassname , 'Configuration:on:')
		asSymbol.
	(self class canPerform: specificRenderingSelector)
		ifFalse: [ specificRenderingSelector := #renderUIComponentConfiguration:on: ].
	self perform: specificRenderingSelector with: each with: html