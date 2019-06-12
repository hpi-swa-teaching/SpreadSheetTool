testing
testFormulaDisplaysLastComputedValueAfterLooseFocusWithoutChanges
	"Test for #25"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormulaContent;
		sendControlSave.
		
	cell keyboardFocusChange: false.
	
	self assert: self someFormulaResult equals: cell text asString.