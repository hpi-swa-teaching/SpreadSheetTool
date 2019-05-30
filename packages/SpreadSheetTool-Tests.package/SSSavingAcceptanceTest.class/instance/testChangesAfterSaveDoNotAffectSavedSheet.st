testing
testChangesAfterSaveDoNotAffectSavedSheet
	"Acceptance test for #14"

	| secondWindow |
	(self findCellAt: self someCellIndex)
		sendKeys: self someContent.
	self saveSheetAs: sheetName.
	
	(self findCellAt: self someCellIndex)
		sendKeys: self someOtherContent.
	
	secondWindow := self openSheetByName.
	self
		assert: self someContent
		equals: (self findCellAt: self someCellIndex in: secondWindow)
			text asString
		description: 'Unsaved changes should not affect saved sheet'.