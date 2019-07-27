testing
testEditedFormulaCellHasAutocompletion
	"Acceptance test for #38 (autocompletion)"

	| cell |
	cell := self findAnyCell.
	cell sendKeys: self someFormula.
	self shouldShowAutocompletion: cell.