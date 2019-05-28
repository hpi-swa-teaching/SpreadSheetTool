testing
testRowHeaders

	self shouldBeUniqueValues: (
		1 to: self rowCount
		collect: [:row | template rowHeaderAt: row])