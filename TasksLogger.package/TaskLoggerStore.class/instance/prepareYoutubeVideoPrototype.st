prototypes
prepareYoutubeVideoPrototype
	| newTask |
	newTask := ExperimentTask new
		id: self newTaskId;
		name: 'Youtube video';
		notes: 'Blocks the entire screen to show the participant a Youtube video.';
		componentClassname: 'YoutubeVideoComponent';
		addProperty: 'videoEmbedUrl' describedBy: 'The embed URL of the youtube video.' value: 'https://www.youtube.com/embed/F9Bo89m2f6g';
		addProperty: 'message'
			describedBy: 'A text to accompany the video'
			value: 'I love Game of Thrones!';
		becomePrototype.
	^ newTask