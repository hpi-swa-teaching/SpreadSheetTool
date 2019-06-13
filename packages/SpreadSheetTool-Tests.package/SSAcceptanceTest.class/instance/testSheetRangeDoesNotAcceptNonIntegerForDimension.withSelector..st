testing
testSheetRangeDoesNotAcceptNonIntegerForDimension: aDimension withSelector: aSheetRangeSelector

	self fixturesForInvalidDimensionValues do: [:value |
		| oldSheetRange |
		oldSheetRange := self measureRangeFor: aSheetRangeSelector.
		self
			should: [self enter: value forDimension: aDimension]
			notify: 'invalid'.
		self
			assert: oldSheetRange equals: (self measureRangeFor: aSheetRangeSelector);
			assert: value equals: (self findDimensionFieldFor: aDimension) text asString].