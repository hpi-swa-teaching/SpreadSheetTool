evaluation
isFormula: aString

	^ self isHybrid ==> [model class hasFormulaFormat: aString]