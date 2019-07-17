testing
testHasPositiveIntegerFormatTrue

	self fixturesWithPositiveIntegerFormat do: [:fixture |
		self
			assert: fixture hasPositiveIntegerFormat
			description: ('for ''{1}''' format: {fixture})]