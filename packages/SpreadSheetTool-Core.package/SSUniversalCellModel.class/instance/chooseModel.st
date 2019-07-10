interaction
chooseModel

	^ UIManager default
		chooseFromValues: (SSModelConfiguration models storeFirst: self model class)
		title: 'Change model'