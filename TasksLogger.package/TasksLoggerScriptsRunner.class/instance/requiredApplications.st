deployment
requiredApplications
	^ #('wen' 'wen-api' 'bootstrap' 'config' 'files')
		copyWith: self applicationName;
		yourself