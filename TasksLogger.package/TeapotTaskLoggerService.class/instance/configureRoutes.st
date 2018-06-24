routes
configureRoutes
	teapot POST: '/users/' -> [ :req | self handleUsersPostRequest: req ].
	teapot POST: '/tasks/' -> [ :req | self handleTasksPostRequest: req ].
	teapot GET: '/sessions/<id>' -> [ :req | self handleSessionsRequest: req ].