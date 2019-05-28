testing
testColumnHeaders

	self shouldBeUniqueValues: (
		1 to: self columnCount
		collect: [:column | template columnHeaderAt: column])