testing
testSetProperty

	model setProperty: self someSetterSymbol.
	self assert: self someSetterSymbol equals: model setProperty.