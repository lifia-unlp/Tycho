I represent a programmable task instruction that can be executed by a bot to enter text into the web element (within the webapp being tested) specified by the given css selector.

I know the css selector to find the element inside the webapp that the bot should enter text.
I know the text that the bot has to enter in the web element.
I know how to be executed by a bot that participates in a session.


Public API and Key Messages

- selector
- text
- executeBy:
- (for bonus points) how to create instances.

   BotSendKeyInstruction selector: '#loginform.username' text: 'johndoe'.
 

Internal Representation and Key Implementation Points.

    Instance Variables
		selector:		<String>	Css selector that identifies the web element where the bot should enter text.
		text: 			<String> Text that the bot enters in the input web element


    Implementation Points