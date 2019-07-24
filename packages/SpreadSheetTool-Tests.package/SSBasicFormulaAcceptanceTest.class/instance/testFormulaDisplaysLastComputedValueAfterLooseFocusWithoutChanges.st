testing
testFormulaDisplaysLastComputedValueAfterLooseFocusWithoutChanges
	"Acceptance test for #25 (Simple formulas)"

	| cell |
	cell := self findAnyCell.
	cell
		sendKeys: self someFormula;
		sendControlSave;
		releaseFocus.
	self assert: self someFormulaResult equals: cell read.