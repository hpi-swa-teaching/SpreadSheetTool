evaluation
isFormula: aString

	^ self isHybrid ==> [model hasFormulaFormat: aString]