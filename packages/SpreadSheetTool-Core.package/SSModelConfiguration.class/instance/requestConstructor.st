interaction
requestConstructor

	^ UIManager default
		chooseFromValues: (self findPossibleConstructors
			storeFirstIfPresent: self constructor)
		title: 'Choose constructor for model'