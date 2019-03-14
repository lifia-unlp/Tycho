accessing
sessionNotes: aString
	self experimentSession notes: aString.
	self store save: self experimentSession.