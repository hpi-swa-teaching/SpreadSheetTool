testing data
someLargerRangeFor: dimension

	| range |
	range := self measureRangeFor: dimension.
	^ range + range sqrtFloor