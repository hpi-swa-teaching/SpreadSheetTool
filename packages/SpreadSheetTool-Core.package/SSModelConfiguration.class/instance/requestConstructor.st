interaction
requestConstructor

	^ UIManager default
		chooseFromValues: (self findPossibleConstructors storeFirst: self constructor)
		title: 'Choose constructor for model'