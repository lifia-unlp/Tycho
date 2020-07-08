rendering-globals
badgeAbTesting: aSession on: html
	^ aSession abTesting
		ifTrue: [ html space.
			html tbsBadge
				style: 'background-color: #337ab7';
				with: 'A/B Testing' ]