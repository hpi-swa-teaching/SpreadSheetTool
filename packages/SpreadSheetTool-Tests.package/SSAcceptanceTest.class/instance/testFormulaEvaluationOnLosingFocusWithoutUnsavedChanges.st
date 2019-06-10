testing
testFormulaEvaluationOnLosingFocusWithoutUnsavedChanges
	"Test for #25"

	| cell header |

	cell := self findAnyCell.
	header := self findAnyHeader.
	
	cell
		sendKeys: self someFormulaContent;
		sendControlSave.
		
	header click.
	cell click.
	header click.
	
	self assert: self someFormulaResult equals: cell text asString.