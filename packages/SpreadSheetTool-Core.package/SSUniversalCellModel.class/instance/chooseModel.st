interaction
chooseModel

	^ UIManager default
		chooseFrom: self class models
		values: self class models
		title: 'Change model'