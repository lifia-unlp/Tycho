deployment
setDeploymentResourceBaseUrl
	WAFileHandler default
		preferenceAt: #resourceBaseUrl
		put: (WAUrl absolute: 'https://selfrefactoring.s3.amazonaws.com/tycho/resources/')