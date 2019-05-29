testing
testSetProperty

	propertyField setProperty: self someSetterSymbol.
	self assert: self someSetterSymbol equals: propertyField setProperty.