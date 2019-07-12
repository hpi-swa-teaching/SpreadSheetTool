interaction
changeConfiguration

	| config |
	config := modelConfig requestConfiguration ifNil: [^ self].
	self offerRegistrationOf: config.
	self initializeModelForClass: self model class withConfig: config.