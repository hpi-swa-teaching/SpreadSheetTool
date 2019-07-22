dependencies
serverChanged

	sheet autoEvaluateActivated ifFalse: [^ self].
	self computeOutput.