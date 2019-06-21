testing
testSheetRangeControlExistsFor: aDimension rangeSelector: aRangeSelector

	| dimensionControl |
	dimensionControl := self findDimensionFieldFor: aDimension.
	self
		assert: dimensionControl isUnique;
		assert: (self in: aRangeSelector) equals: dimensionControl text asNumber.