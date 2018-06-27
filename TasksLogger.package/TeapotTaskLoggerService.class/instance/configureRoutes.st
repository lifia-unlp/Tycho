routes
configureRoutes
	teapot POST: '/users/' -> [ :req | self handleUsersPostRequest: req ].
	teapot POST: '/task-results/' -> [ :req | self handleTaskResultPostRequest: req ].
	teapot GET: '/designs/<id>' -> [ :req | self handleDesignRequest: req ].