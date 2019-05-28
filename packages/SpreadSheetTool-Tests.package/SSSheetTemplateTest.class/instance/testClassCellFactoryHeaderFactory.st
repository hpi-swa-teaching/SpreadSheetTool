testing
testClassCellFactoryHeaderFactory

	| template headerFactory |
	headerFactory := #yourself.
	
	template := self classUnderTest
		cellFactory: [:r :c | self cellValueForRow: r forColumn: c]
		headerFactory: headerFactory.
	
	self
		assert: headerFactory equals: template rowHeaderFactory;
		assert: headerFactory equals: template columnHeaderFactory.