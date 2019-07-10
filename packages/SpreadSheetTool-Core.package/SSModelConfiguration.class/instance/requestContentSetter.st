interaction
requestContentSetter

	^ UIManager default
		chooseFromValues: (self findPossibleSetters storeFirst: self contentSetter)
		title: 'Choose setter for model'