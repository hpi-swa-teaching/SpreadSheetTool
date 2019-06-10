testing
testFormulaReevaluation
	"Test for #25"

	| cell |

	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormulaContent;
		sendControlSave.
		
	self class sideEffect: 1.
	
	cell sendControlSave.
	
	self assert: ((self someFormulaResult asInteger) + 1) asString equals: cell text asString.