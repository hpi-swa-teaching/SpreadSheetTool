testing
testNonFormulaCellHasNoAutocompletion
	"Acceptance test for #38 (Autocompletion)"

	| cell |
	cell := self findAnyCell.
	cell sendKeys: self someContent.
	self shouldntShowAutocompletion: cell.