scripts
resultsTableFor: aTask withVersions: versions
	^ String
		streamContents: [ :stream | 
			self printTableHeaderFor: versions on: stream.
			versions
				do: [ :version | 
					stream cr.
					self printTask: aTask version: version on: stream ] ]