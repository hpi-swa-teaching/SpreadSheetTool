interaction
changeConfiguration

	| config |
	config := modelConfig requestConfiguration ifNil: [^ self].
	self offerToRegister: config.
	self initializeModelForClass: self model class withConfig: config.