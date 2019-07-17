interaction
requestBuilderSelector

	^ UIManager default
		chooseFromValues: (self findPossibleBuilderSelectors
			storeFirstIfPresent: self builderSelector)
		title: 'Choose toolbuilder method for model'