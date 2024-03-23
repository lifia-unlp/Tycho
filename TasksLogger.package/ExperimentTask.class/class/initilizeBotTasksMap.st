class initialization
initilizeBotTasksMap
	"Creates the dictionary thap maps protocol task types to the corresponding bot task"
	
	BotTasksMap:= { 
		'TaskInstructionsComponent' -> [ :task | BotProgrammableTask task: task ].
		'MessageComponent' -> [ :task | BotMockTask task: task ].
		'QuestionaireComponent' -> [ :task | BotMockTask task: task ].
		'SUSComponent' -> [ :task | BotMockTask task: task ].
		'YoutubeVideoComponent' -> [ :task | BotMockTask task: task ].
		'SemaphoreWaitComponent' -> [ :task | SemaphoreWaitingTask task: task ].
		'SemaphoreSignalComponent' -> [ :task | SemaphoreSignalingTask task: task ].
		'InputVariableComponent' -> [ :task | InputVariableTask task: task ].		
	 } asDictionary.