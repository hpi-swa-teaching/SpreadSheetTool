interaction
requestContentSetterFor: configuration

	^ UIManager default
		chooseFromValues: ((self findPossibleSetters
			storeFirstIfPresent: self contentSetter)
				storeFirstIfPresent: (configuration contentGetter, $:) asSymbol)
		title: 'Choose setter for model'