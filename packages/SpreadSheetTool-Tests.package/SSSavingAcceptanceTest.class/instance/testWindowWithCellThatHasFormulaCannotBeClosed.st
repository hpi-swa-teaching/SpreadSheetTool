testing
testWindowWithCellThatHasFormulaCannotBeClosed
	"Test for #10 (Simple Menu)"

	self chooseInspectorModelAt: self someCellIndex.
	self
		at: self someCellIndex
		putGetter: self someGetterFormula
		putSetter: self someSetterFormula.
	self assertWindowCannotBeClosed.