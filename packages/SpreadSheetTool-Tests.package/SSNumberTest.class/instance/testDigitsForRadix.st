testing
testDigitsForRadix

	self fixturesForDigitsForRadix do: [:fixture |
		self assert: fixture last equals: (self classUnderTest digitsForRadix: fixture first)]