testing
testSyntaxErrorDoesNotReopenWithoutAccept
	"Regression test for #44"
	
	| cell |
	cell := self findAnyCell.
	cell sendKeys: self someFormulaWithRuntimeError.
	self shouldOpenDebugger: [
		cell sendControlSave; releaseFocus].
	self shouldnt: [cell click; releaseFocus] raise: Exception.
		