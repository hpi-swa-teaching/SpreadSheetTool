testing
testFormulaEvaluation
	"Test for #25"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormulaContent;
		sendControlSave.
	
	self assert: self someFormulaResult equals: cell text asString.