testing per dimension
testRangeControlExistsFor: aDimension rangeSelector: aRangeSelector
	"Acceptance test for #21 (Warning/error message for bad sheet dimension inputs)"

	| dimensionControl |
	dimensionControl := self findDimensionFieldFor: aDimension.
	self
		assert: dimensionControl isUnique;
		assert: (self in: aRangeSelector) equals: dimensionControl text asNumber.