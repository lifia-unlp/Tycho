protocols
sessionProtocols
	^ (repository selectAll: ExperimentProtocol) select: [ :protocol | protocol id isNotNil ]