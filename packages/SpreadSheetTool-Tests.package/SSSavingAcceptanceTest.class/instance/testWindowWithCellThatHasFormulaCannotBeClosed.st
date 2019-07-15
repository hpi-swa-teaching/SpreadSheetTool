testing
testWindowWithCellThatHasFormulaCannotBeClosed
	"Test for #10 (Simple Menu)"

	self
		setFormulaAt: self someCellIndex
		getter: self someGetterFormula
		setter: self someSetterFormula.
	
	self
		should: [self subject delete]
		notify: 'changes'
		thenAnswer: false.
	
	self assertWindowNotDeleted: self subject.