testing
testFormulaeAreKeptOnChangeModel

	self
		at: self someCellIndex
		putGetter: self someGetterFormula
		putSetter: self someSetterFormula.
	self
		chooseFormulaModelAt: self someCellIndex;
		chooseEvaluatorModelAt: self someCellIndex.
	self
		assert: self someGetterFormula
			equals: (self readGetterAt: self someCellIndex);
		assert: self someSetterFormula
			equals: (self readSetterAt: self someCellIndex).