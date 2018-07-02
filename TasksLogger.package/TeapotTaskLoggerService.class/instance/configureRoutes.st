routes
configureRoutes
	teapot POST: '/task-results/' -> [ :req | self handleTaskResultPostRequest: req ].
	teapot GET: '/experiments/<id>' -> [ :req | self handleExperimentRequest: req ].