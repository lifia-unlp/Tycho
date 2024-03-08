initialization
initialize
	"Performs the required actions so that the web browser driver is ready to use"
			
	adaptee:= BPRemoteWebDriver withCapabilities: BPChromeOptions new.