performing
clickOn: aCssSelector
	"Clicks the element identified by the given css selector on the current web page"
	
	| element |
	
	element:= self adaptee findElementByCSSSelector: aCssSelector.
	
	[ element click ]
		on: BPStaleElementReferenceException 
		do: [ 
			element:= self adaptee findElementByCSSSelector: aCssSelector.
			element click.			
		 ].	