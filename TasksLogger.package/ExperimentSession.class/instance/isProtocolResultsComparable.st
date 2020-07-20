globals
isProtocolResultsComparable
	^ self abTesting & (self protocols allSatisfy: [:protocol | protocol haveTaskWithComponentClassname:'DOMCollectorComponent'])