testing
testChangeModelHidesGetter
	"Regression test"

	self at: self someCellIndex putGetter: self someFormula.
	(self findGetFormulaButtonAt: self someCellIndex) click.
	self chooseFormulaModelAt: self someCellIndex.
	self assert: self someFormulaResult equals: (self findCellAt: self someCellIndex) read.