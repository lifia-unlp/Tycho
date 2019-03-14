collections
sessionProtocols
	^ self users
		flatCollect: [ :user | user sessions flatCollect: [ :session | session protocols ] ]