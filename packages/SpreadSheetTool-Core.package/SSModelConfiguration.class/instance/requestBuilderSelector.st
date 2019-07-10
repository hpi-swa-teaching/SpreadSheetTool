interaction
requestBuilderSelector

	^ UIManager default
		chooseFromValues: (self findPossibleBuilderSelectors storeFirst: self builderSelector)
		title: 'Choose toolbuilder method for model'