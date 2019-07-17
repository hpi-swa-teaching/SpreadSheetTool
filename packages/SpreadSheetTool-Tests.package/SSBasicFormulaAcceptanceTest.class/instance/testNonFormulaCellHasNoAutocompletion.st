testing
testNonFormulaCellHasNoAutocompletion
	"Acceptance test for #38 (autocompletion)"

	| cell |
	cell := self findAnyCell.
	cell sendKeys: self someContent.
	self shouldntShowAutocompletion: cell.