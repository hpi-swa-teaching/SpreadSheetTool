testing
testRangeControlDoesNotAcceptNonInteger
	"Acceptance test for #21 (Warning/error message for bad sheet dimension inputs)"

	self dimensionsDo: [:dimension |
		self testRangeControlDoesNotAcceptNonIntegerFor: dimension]
	
		
		