as yet unclassified
testHasPositiveIntegerFormatFalse

	self fixturesWithoutPositiveIntegerFormat do: [:fixture |
		self deny: fixture hasPositiveIntegerFormat]