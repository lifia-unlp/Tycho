performing
sendKeys: aString on: aCssSelector
	"Enters the specified text in the input element identified by the given css selector (within the current web page) "
			
	self clickOn: aCssSelector.
	self adaptee getKeyboard sendKeys: aString.