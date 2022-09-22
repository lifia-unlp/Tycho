Smalltalk vm maxExternalSemaphoresSilently: 1024.
"Install the app"
Metacello new
	baseline: 'TasksLogger';
	repository: 'github://lifia-unlp/Tycho';
	onConflictUseLoaded;
	onWarningLog;
	load.
"Disable loading of preferences"	
PharoCommandLineHandler forcePreferencesOmission: true.
"Disable Epicea"
EpMonitor reset.
