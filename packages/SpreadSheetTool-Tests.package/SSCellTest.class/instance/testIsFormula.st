testing
testIsFormula
	
	cell rawValue: self someFormula.
	self assert: cell isFormula.