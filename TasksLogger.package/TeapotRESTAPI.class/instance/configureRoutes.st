routes
configureRoutes
	teapot POST: '/task-results/' -> [ :req | api handleTaskResultPostRequest: req ].
	teapot GET: '/experiments/<id>' -> [ :req | api handleExperimentRequest: req ]