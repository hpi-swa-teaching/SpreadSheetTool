tools
performSheetAction: anActionLabel byName: aName

	^ self
		should: [(self subject findByLabel: anActionLabel) click]
		notify: 'sheet'
		thenAnswer: aName