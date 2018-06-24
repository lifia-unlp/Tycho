voyage-access
userFromParameters: parameters

	^ (parameters at: #age ifAbsent: [nil])
		ifNil: [ TestUser selectOne: [ :stored | stored id = (parameters at: #userId) ] ]
		ifNotNil: [ self
				fetchOrSave:
					(TestUser
						userId: (parameters at: #userId)
						age: (parameters at: #age) asNumber
						browsingHoursPerDay: (parameters at: #hoursPerDay) asNumber
						version: (parameters at: #version)) ]