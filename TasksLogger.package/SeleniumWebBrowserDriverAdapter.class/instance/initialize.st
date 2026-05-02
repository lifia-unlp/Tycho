initialization
initialize
	"Performs the required setup so that the web browser driver is ready to use, 
	including configuring an implicit wait timeout (10000 ms) for element lookup."
			
	adaptee:= BPRemoteWebDriver withCapabilities: BPChromeOptions new.
	adaptee manage timeouts implicitlyWait: (Duration seconds: 10000).
	