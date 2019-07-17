testing
testFormulaReevaluation
	"acceptance test for #25 (Simple formulas)"

	| cell sideEffect |
	cell := self findAnyCell.
	sideEffect := 1.
	
	cell
		sendKeys: self someFormula;
		sendControlSave.
		
	self class sideEffect: sideEffect.
	
	cell
		keyboardFocusChange: true;
		sendControlSave;
		keyboardFocusChange: false.
	
	self assert: (self someFormulaResult asInteger + sideEffect) asString equals: cell read.