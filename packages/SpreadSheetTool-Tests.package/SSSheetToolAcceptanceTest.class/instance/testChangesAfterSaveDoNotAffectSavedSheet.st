testing
testChangesAfterSaveDoNotAffectSavedSheet
	"Acceptance test for #14"

	| secondWindow |
	(self findCellAt: self someCellIndex)
		sendKeys: self someContent;
		sendControlSave.
	self saveSheetAs: sheetName.
	
	(self findCellAt: self someCellIndex)
		sendKeys: self someOtherContent;
		sendControlSave.
	
	secondWindow := self openSheetByName: sheetName.
	self
		assert: self someContent
		equals: (self findCellAt: self someCellIndex in: secondWindow)
			text asString
		description: 'Unsaved changes should not affect saved sheet'.