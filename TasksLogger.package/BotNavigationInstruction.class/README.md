I represent a programmable task instruction that can be executed by a bot to navigate to the website specified by the given url.

I know the url of the website the bot should visit.
I know how to be executed by a bot that participates in a session.


Public API and Key Messages

- url
- executeBy:
- (for bonus points) how to create instances.

   BotNavigationInstruction url: 'https:://www.examplesite.com/'.
 

Internal Representation and Key Implementation Points.

    Instance Variables
		url:		<String>	Target website url


    Implementation Points