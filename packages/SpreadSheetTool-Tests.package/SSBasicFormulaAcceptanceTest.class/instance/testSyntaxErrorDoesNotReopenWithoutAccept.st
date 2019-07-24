testing
testSyntaxErrorDoesNotReopenWithoutAccept
	"Regression test for bug #44"
	
	| cell |
	cell := self findAnyCell.
	cell sendKeys: self someFormulaWithRuntimeError.
	self
		shouldOpenDebugger: [
			cell sendControlSave];
		shouldnt: [cell click; releaseFocus]
			raise: Exception.
		