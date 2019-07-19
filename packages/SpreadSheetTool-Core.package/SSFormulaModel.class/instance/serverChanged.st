dependencies
serverChanged

	self parent autoEvaluateActivated ifFalse: [^ self].
	self refreshValue.