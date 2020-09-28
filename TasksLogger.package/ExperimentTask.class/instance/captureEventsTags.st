globals
captureEventsTags
	^ (self atProperty: 'captureEventsTag') allRegexMatches: '[^', (String with: Character cr), ']+'.