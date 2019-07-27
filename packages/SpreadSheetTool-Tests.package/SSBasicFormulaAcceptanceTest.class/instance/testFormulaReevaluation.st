testing
testFormulaReevaluation
	"Acceptance test for #25 (Simple formulas)"

	| cell sideEffect |
	cell := self findAnyCell.
	sideEffect := 1.
	cell
		sendKeys: self someFormula;
		sendControlSave.
	self class sideEffect: sideEffect.
	
	cell
		click;
		sendControlSave;
		releaseFocus.
	self
		assert: (self someFormulaResult asInteger + sideEffect) asString
		equals: cell read.