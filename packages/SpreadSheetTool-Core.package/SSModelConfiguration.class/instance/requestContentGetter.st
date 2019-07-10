interaction
requestContentGetter

	^ UIManager default
		chooseFromValues: (self findPossibleGetters storeFirst: self contentGetter)
		title: 'Choose getter for model'