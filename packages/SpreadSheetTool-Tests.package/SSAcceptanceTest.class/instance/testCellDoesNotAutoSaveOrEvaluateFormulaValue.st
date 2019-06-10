testing
testCellDoesNotAutoSaveOrEvaluateFormulaValue
	"Test for #25"

	| cell header |
	cell := self findAnyCell.
	header := self findAnyHeader.
	
	cell sendKeys: self someFormulaContent.
	
	header click.
	
	self
		assert: self someFormulaContent equals: cell text asString;
		assert: cell hasUnacceptedEdits.