dependencies
serverChanged

	sheet autoEvaluateActivated ifFalse: [^ self].
	self refreshResult.