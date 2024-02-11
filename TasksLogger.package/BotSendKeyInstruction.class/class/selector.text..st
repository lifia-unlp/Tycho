instance creation
selector: aCssSelector text: aText
	"Creates a new instruction that allows a bot to enter the given text in the web element identified by the given css selector."
			
	^ (self new) selector: aCssSelector; text: aText.