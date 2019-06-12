as yet unclassified
testHasPositiveIntegerFormatTrue

	self fixturesWithPositiveIntegerFormat do: [:fixture |
		self assert: fixture hasPositiveIntegerFormat]