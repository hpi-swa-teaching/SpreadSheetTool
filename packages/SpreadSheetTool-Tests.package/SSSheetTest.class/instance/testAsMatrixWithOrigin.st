testing
testAsMatrixWithOrigin

	| matrix origin |
	origin := self someValue.
	matrix := sheet asMatrixWithOrigin: origin.
	
	self
		assert: self rowCount + 1 equals: matrix rowCount;
		assert: self columnCount + 1 equals: matrix columnCount.
	self
		assert: origin equals: (matrix at: 1 at: 1);
		validateHeadersIn: matrix;
		validateContentsIn: matrix.