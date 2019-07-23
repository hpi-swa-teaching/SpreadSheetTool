testing
testSheetHasColumnHeaders
	"acceptance test for #7 (Row and column header)"

	self
		assert: self columnCount equals: (self findHeadersFor: 'columns') size;
		assertColumnHeadersRegularWithoutFirst: 0.