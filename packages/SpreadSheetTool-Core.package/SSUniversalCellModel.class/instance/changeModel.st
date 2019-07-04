interaction
changeModel

	self initializeModel: ((UIManager default
		chooseFrom: self class models
		values: self class models
		title: 'Change model')
			ifNil: [^ self]).