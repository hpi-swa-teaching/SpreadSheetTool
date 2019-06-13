testing
testHasPositiveIntegerFormatTrue

	self fixturesWithPositiveIntegerFormat do: [:fixture |
		self assert: fixture hasPositiveIntegerFormat]