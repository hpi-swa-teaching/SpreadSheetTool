testing
testSheetHasRowHeaders
	"Acceptance test for #7 (Row and column header)"

	self
		assert: self rowCount equals: (self findHeadersFor: #rows) size;
		assertRowHeadersOrder.