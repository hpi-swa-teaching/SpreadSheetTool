accessing
isFormula

	^ self isHybrid ==> [self class hasFormulaFormat: self input]