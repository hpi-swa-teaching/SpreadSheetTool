interaction
changeModel

	| modelClass config |
	modelClass := self chooseModel ifNil: [^ self].
	config := SSModelConfiguration at: modelClass ifAbsent: [
		| newConfig |
		newConfig := SSModelConfiguration
			requestConfiguration: modelClass
			onCancel: [^ self].
		self offerToRegister: newConfig.
		newConfig].
	self installModelOfKind: modelClass with: config.
	self contentsChanged.