testing
testGetProperty

	model getProperty: self someGetterSymbol.
	self assert: self someGetterSymbol equals: model getProperty.