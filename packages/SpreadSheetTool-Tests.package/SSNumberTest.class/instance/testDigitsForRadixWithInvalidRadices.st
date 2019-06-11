testing
testDigitsForRadixWithInvalidRadices

	self invalidFixturesForDigitsForRadix do: [:fixture |
		self
			should: [self classUnderTest digitsForRadix: fixture]
			raise: Error]