collections
sessionProtocols
	^ self sessions flatCollect: [ :session | session protocols ]