testing
testHasPositiveIntegerFormatFalse

	self fixturesWithoutPositiveIntegerFormat do: [:fixture |
		self
			deny: fixture hasPositiveIntegerFormat
			description: ('for ''{1}''' format: {fixture})]