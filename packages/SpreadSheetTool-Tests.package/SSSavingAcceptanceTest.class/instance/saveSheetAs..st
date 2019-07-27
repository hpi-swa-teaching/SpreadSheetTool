tools
saveSheetAs: aName

	self
		should: [(self subject findByLabel: 'Save sheet') click]
		notify: 'sheet'
		thenAnswer: aName.