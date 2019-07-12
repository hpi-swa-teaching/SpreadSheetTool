interaction
changeModel

	| modelClass config |
	modelClass := self chooseModel ifNil: [^ self].
	config := SSModelConfiguration lookup: modelClass ifAbsent: [| newConfig |
		newConfig := SSModelConfiguration requestConfiguration: modelClass onCancel: [^ self].
		self offerRegistrationOf: newConfig.
		newConfig].
	self initializeModelForClass: modelClass withConfig: config.