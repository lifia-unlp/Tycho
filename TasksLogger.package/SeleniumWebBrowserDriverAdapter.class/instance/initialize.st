initialization
initialize
	"Performs the required setup so that the web browser driver is ready to use, 
	including configuring an implicit wait timeout (10000 ms) for element lookup."

	| browserOptions |			
			
	browserOptions:= BPChromeOptions new.
	browserOptions addArguments: (OrderedCollection with: '--start-maximized').
	adaptee:= BPRemoteWebDriver withCapabilities: browserOptions.
	adaptee manage timeouts implicitlyWait: (Duration seconds: 10000).
	