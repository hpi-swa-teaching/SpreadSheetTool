testing
testFormulaeAreKeptOnChangeModel
	"Acceptance test for #65 (Unify different formula approaches)"

	self
		at: self someCellIndex
		putGetter: self someGetterFormula
		putSetter: self someSetterFormula.
	self
		chooseFormulaModelAt: self someCellIndex;
		fullWait;
		chooseEvaluatorModelAt: self someCellIndex.
	self
		assert: self someGetterFormula
			equals: (self readGetterAt: self someCellIndex);
		assert: self someSetterFormula
			equals: (self readSetterAt: self someCellIndex).