deployment
requiredApplications
	^ #('wen' 'bootstrap' 'config' 'files')
		copyWith: self applicationName;
		yourself