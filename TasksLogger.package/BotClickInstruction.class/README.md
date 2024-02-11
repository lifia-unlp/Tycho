I represent a programmable task instruction that can be executed by a bot to click on an element (within the webapp being tested) specified by the given css selector.

I know the css selector to find the element inside the webapp that the bot should click on.
I know how to be executed by a bot that participates in a session.


Public API and Key Messages

- selector
- executeBy:
- (for bonus points) how to create instances.

   BotClickInstruction selector: '#login-button'.
 

Internal Representation and Key Implementation Points.

    Instance Variables
		selector:		<String>	Css selector that identifies the web element that the bot should click on.


    Implementation Points