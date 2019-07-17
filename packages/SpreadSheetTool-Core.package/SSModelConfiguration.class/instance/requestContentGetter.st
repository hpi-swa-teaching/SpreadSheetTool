interaction
requestContentGetter

	^ UIManager default
		chooseFromValues: (self findPossibleGetters
			storeFirstIfPresent: self contentGetter)
		title: 'Choose getter for model'