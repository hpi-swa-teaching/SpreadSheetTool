testing
testChangesAfterReopenDoNotAffectSavedSheet
	"Acceptance test for #14"

	| secondWindow thirdWindow |
	(self findCellAt: self someCellIndex)
		sendKeys: self someContent.
	self saveSheetAs: sheetName.
	
	secondWindow := self openSheetByName.
	(self findCellAt: self someCellIndex in: secondWindow)
		sendKeys: self someOtherContent.
	
	thirdWindow := self openSheetByName.
	self
		assert: self someContent
		equals: (self findCellAt: self someCellIndex in: thirdWindow)
			text asString
		description: 'Unsaved changes should not affect saved sheet'.