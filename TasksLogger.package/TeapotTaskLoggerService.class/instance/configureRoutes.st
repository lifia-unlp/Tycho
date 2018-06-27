routes
configureRoutes
	teapot POST: '/users/' -> [ :req | self handleUsersPostRequest: req ].
	teapot POST: '/tasks/' -> [ :req | self handleTasksPostRequest: req ].
	teapot GET: '/designs/<id>' -> [ :req | self handleDesignRequest: req ].