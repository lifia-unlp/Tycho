An experiment design is a reusable definition of tasks to be conducted during an experiment.

 Instance variables:
- id: I have a "unique" id because I will be exported and shared with other enviroments (otherwise, I would jut use my identity)
- tasks: OrderedCollection of ExperimentTask
- notes:  some notes regarding this design, such as purpose, requirements, designer. 
- dataExecution: instance of ExperimentPorotoclExecution. This instance have data of executions of this protocol (e.g. cant of joins)