testing
testChangesAfterReopenDoNotAffectSavedSheet
	"Acceptance test for #14 (Save/Load sheet in image)"

	| secondWindow thirdWindow |
	(self findCellAt: self someCellIndex)
		sendKeys: self someContent.
	self saveSheetAs: self someSheetName.
	
	secondWindow := self openSheetByName: self someSheetName.
	(self findCellAt: self someCellIndex in: secondWindow)
		sendKeys: self someOtherContent.
	
	thirdWindow := self openSheetByName: self someSheetName.
	self
		assert: self someContent
		equals: (self findCellAt: self someCellIndex in: thirdWindow) read.