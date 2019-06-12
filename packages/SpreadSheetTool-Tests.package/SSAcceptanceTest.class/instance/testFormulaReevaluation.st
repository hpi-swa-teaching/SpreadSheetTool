testing
testFormulaReevaluation
	"Test for #25"

	| cell sideEffect |
	cell := self findAnyCell.
	sideEffect := 1.
	
	cell
		sendKeys: self someFormulaContent;
		sendControlSave.
		
	self class sideEffect: sideEffect.
	
	cell
		keyboardFocusChange: true;
		sendControlSave;
		keyboardFocusChange: false.
	
	self assert: (self someFormulaResult asInteger + sideEffect) asString equals: cell text asString.