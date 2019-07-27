testing
testChangesAfterSaveDoNotAffectSavedSheet
	"Acceptance test for #14 (Save/Load sheet in image)"

	| secondWindow |
	(self findCellAt: self someCellIndex)
		sendKeys: self someContent.
	self saveSheetAs: self someSheetName.
	(self findCellAt: self someCellIndex)
		sendKeys: self someOtherContent.
	
	secondWindow := self openSheetByName: self someSheetName.
	self
		assert: self someContent
		equals: (self findCellAt: self someCellIndex in: secondWindow) read.