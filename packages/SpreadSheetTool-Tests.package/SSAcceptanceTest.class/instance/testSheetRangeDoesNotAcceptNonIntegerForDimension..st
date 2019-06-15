testing
testSheetRangeDoesNotAcceptNonIntegerForDimension: aDimension

	self fixturesForInvalidDimensionValues do: [:value |
		| oldSheetRange |
		oldSheetRange := self measureRangeFor: aDimension.
		self
			should: [self enter: value forDimension: aDimension]
			notify: 'invalid'.
		self
			assert: oldSheetRange equals: (self measureRangeFor: aDimension);
			assert: value equals: (self findDimensionFieldFor: aDimension) text asString].