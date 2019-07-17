testing
testFormulaCellAcceptsPrintIt
	"acceptance test for #54 (PrintIt & Co. in formula cells)"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormula;
		sendControl: $p.
	
	self assert: self someFormulaResult equals: cell selectedString allButFirst.