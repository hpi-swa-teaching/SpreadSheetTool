interaction
changeConfiguration

	| config |
	config := self modelConfig requestConfiguration ifNil: [^ self].
	self offerToRegister: config.
	self installModelOfKind: self model class with: config.