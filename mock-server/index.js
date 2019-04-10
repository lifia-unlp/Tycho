var express = require("express");
var app = express();

app.get("/tycho-api/protocols/:protocolId", (req, res, next) => {
  res.json(mockProtocol(req.params.prototolId));
});

app.post("/tycho-api/task-results", (req, res, next) => {
    console.log(req.body);
});

app.patch("/tycho-api/variables/:varId?protocol=:protocolId", (req, res, next) => {
    console.log(req.body);
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});

var mockProtocol = function (id) {
    return JSON.parse(`{
	"suggestedSampleId" : "LightGreenMIlo",
	"notes" : "",
	"id" : "${id}",
	"tasks" : [
		{
			"notes" : "Blocks the entire screen to give the participant a message.",
			"isPrototype" : false,
			"name" : "Message screen",
			"model" : {
				"title" : "Important!",
				"message" : "Next, you will provide an input, and then collect DOM elements",
				"id" : "5"
			},
			"componentClassname" : "MessageComponent"
		},
		{
			"notes" : "Asks the user for a value. The value will be assigned to a protocol variable",
			"isPrototype" : false,
			"name" : "Input variable",
			"model" : {
				"variableName" : "varA",
				"instructions" : "Choose a number between 1 and 100",
				"id" : "6"
			},
			"componentClassname" : "InputVariableComponent"
		},
		{
			"notes" : "Provides instructions for a task that is completed by collecting DOM elements. Records time. Can pause and resume. Has a basic success condition.",
			"isPrototype" : false,
			"name" : "Collect elements",
			"model" : {
				"completionChoices" : "#doneOrAbandon",
				"id" : "7",
				"instructions" : "Collect (by clicking on them) all images in this page",
				"successCondition" : "true"
			},
			"componentClassname" : "DOMCollectorComponent"
		},
		{
			"notes" : "Blocks the entire screen to give the participant a message.",
			"isPrototype" : false,
			"name" : "Message screen",
			"model" : {
				"title" : "Thanks",
				"message" : "Your are done",
				"id" : "8"
			},
			"componentClassname" : "MessageComponent"
		}
	]
}`);
}