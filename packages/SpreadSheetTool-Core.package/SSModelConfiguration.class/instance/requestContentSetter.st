interaction
requestContentSetter

	^ UIManager default
		chooseFromValues: (self findPossibleSetters
			storeFirstIfPresent: self contentSetter)
		title: 'Choose setter for model'