testing
testNonEditedFormulaCellHasNoAutocompletion
	"Acceptance test for #38 (autocompletion)"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormula;
		sendControlSave.
	
	self shouldntShowAutocompletion: cell.