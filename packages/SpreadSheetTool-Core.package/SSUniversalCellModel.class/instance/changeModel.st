interaction
changeModel

	| modelClass config |
	modelClass := self chooseModel ifNil: [^ self].
	config := SSModelConfiguration lookupForClass: modelClass.
	config ifNil: [^ self].
	self initializeModelForClass: modelClass withConfig: config.