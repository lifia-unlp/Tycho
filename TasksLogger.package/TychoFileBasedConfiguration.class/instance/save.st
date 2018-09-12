save
save
	FileStream
		forceNewFileNamed: './tycho-config.fuel'
		do: [ :aStream | FLSerializer newDefault serialize: self on: aStream binary ]