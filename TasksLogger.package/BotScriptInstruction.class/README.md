I represent a programmable task instruction that can be executed by a bot to run a script in the webapp being tested.

I know the code of the script the bot executes in the context of the webapp being tested.
I know how to be executed by a bot that participates in a session.


Public API and Key Messages

- code
- executeBy:
- (for bonus points) how to create instances.

   BotScriptInstruction code: 'document.getElementById("inputElement").value = document.getElementById("someElement").textContent;'.
 

Internal Representation and Key Implementation Points.

    Instance Variables
		code:		<String>	Javascript code to be execute in the context of a web page

	Implementation Points