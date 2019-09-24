rendering
renderUIComponentConfiguration: each on: html
	each properties
		do: [ :prop | 
			html label: prop name uncameled.
			html preformatted: prop value ]