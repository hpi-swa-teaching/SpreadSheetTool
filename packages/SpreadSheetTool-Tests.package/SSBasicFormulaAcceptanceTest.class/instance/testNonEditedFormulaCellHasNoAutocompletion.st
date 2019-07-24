testing
testNonEditedFormulaCellHasNoAutocompletion
	"Acceptance test for #38 (Autocompletion)"

	| cell |
	cell := self findAnyCell.
	cell
		sendKeys: self someFormula;
		sendControlSave.
	self shouldntShowAutocompletion: cell.