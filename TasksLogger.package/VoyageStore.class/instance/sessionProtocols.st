collections
sessionProtocols
	^ repository selectMany: ExperimentProtocol where: [ :each | each id ~= nil ]