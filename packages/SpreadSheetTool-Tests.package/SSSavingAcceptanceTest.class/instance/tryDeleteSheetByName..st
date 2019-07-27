tools
tryDeleteSheetByName: aName

	self
		should: [(self subject findByLabel: 'Delete sheet') click]
		notify: 'sheet'
		thenAnswer: aName.