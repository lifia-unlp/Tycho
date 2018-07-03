seaside
turnOffDebugging
	(WAAdmin defaultDispatcher handlerAt: self seasideApplicationName)
		exceptionHandler: WAHtmlErrorHandler