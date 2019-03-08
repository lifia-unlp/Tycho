accessing
sessionNotes: aString
	self session notes: aString.
	self store save: self session.