accessing
isFormula

	^ self isHybrid ==> [model class hasFormulaFormat: self input]