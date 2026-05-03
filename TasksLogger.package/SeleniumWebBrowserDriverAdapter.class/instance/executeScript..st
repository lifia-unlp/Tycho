performing
executeScript: aJavascriptCode
	"Executes the given code in the context of the current web page"
			
	(self adaptee executeScript: aJavascriptCode  with: (Array new))