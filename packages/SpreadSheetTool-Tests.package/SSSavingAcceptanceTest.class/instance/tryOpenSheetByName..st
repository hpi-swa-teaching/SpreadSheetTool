tools
tryOpenSheetByName: aName

	self
		should: [(self subject findByLabel: 'Open sheet') click]
		notify: 'sheet'
		thenAnswer: aName.