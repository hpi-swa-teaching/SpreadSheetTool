testing
testWindowWithCellThatHasFormulaCannotBeClosed
	"Test for #10 (Simple Menu)"

	self
		at: self someCellIndex
		putGetter: self someGetterFormula
		putSetter: self someSetterFormula.
	self assertWindowCannotBeClosed.