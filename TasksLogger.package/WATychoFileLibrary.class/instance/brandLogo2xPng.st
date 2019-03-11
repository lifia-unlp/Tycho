uploaded metadata
brandLogo2xPng
	^ WAFileLibraryResource
		filepath: 'brandLogo2x.png'
		mimeType: (WAMimeType main: 'image' sub: 'png')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #brandLogo2xPngContent)