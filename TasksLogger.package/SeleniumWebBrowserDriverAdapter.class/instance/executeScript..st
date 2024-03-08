performing
executeScript: aJavascriptCode
	"Executes the given code in the context of the current web page"
	"ToDo: Check the method #executeScript:with: of BPRemoteWebDriver"
			
	(self adaptee executeScript: aJavascriptCode  with: '' )