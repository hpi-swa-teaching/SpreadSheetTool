interaction
changeConfiguration

	| config |
	config := modelConfig requestConfiguration.
	config ifNil: [^ self].
	(UIManager default confirm:
		('Would you like to set this configuration as default for {1}?' format: {modelConfig modelClass}))
			ifTrue: [SSModelConfiguration addKnownConfiguration: config].
	self initializeModelForClass: self model class withConfig: config.