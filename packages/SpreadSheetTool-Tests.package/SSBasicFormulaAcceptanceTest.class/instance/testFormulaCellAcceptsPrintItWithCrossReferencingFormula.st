testing
testFormulaCellAcceptsPrintItWithCrossReferencingFormula
	"Acceptance test for #54 (PrintIt & Co. in formula cells)"

	| cellIndex cell |
	cellIndex := self someCellIndex.
	cell := self findCellAt: cellIndex.
	cell
		sendKeys:  '^cell rowHeader';
		sendControl: $p.
	self
		assert: cellIndex y asString printString
		equals: cell selectedString allButFirst.