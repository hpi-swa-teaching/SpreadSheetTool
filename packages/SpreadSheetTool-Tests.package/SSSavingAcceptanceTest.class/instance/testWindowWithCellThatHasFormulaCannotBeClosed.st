testing
testWindowWithCellThatHasFormulaCannotBeClosed
	"Test for #10 (Simple Menu)"

	self
		setFormulaAt: self someCellIndex
		getter: self someGetterFormula
		setter: self someSetterFormula.
	self assertWindowCannotBeClosed.