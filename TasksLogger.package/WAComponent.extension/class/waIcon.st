*TasksLogger
waIcon
	^ Form
		fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self waIconContents readStream)