instance creation
selector: aValueModel1 text: aValueModel2
	"Creates a new instruction that allows a bot to enter the given text in the web element identified by the given css selector."
			
	^ (self new) selector: aValueModel1; text: aValueModel2.