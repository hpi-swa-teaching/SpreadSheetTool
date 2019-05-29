testing
testGetProperty

	propertyField getProperty: self someGetterSymbol.
	self assert: self someGetterSymbol equals: propertyField getProperty.