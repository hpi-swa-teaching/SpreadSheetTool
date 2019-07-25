testing per dimension
testRangeControlDoesNotAcceptNonIntegerFor: aDimension
	"Acceptance test for #21 (Warning/error message for bad sheet dimension inputs)"

	self withFixtures: self fixturesForInvalidDimensionValues do: [:value |
		| oldSheetRange |
		oldSheetRange := self measureRangeFor: aDimension.
		self
			should: [self resize: aDimension to: value]
			notify: 'invalid'.
		self
			assert: oldSheetRange equals: (self measureRangeFor: aDimension);
			assert: value equals: (self findDimensionFieldFor: aDimension) read].