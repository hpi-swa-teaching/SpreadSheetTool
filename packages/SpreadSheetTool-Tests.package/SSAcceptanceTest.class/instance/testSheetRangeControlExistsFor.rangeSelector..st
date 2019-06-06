testing
testSheetRangeControlExistsFor: aDimension rangeSelector: aRangeSelector

	| dimensionControl |
	dimensionControl := self subject findByBalloon: aDimension.
	self
		assert: dimensionControl isUnique;
		assert: (self in: aRangeSelector) equals: dimensionControl text asNumber.