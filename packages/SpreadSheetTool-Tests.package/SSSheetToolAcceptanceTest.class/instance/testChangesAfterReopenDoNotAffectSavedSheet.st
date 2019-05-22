testing
testChangesAfterReopenDoNotAffectSavedSheet
	"Acceptance test for #14"

	| secondWindow thirdWindow |
	(self findCellAt: self someCellIndex)
		sendKeys: self someContent;
		sendControlSave.
	self saveSheetAs: sheetName.
	
	secondWindow := self openSheetByName: sheetName.
	(self findCellAt: self someCellIndex in: secondWindow)
		sendKeys: self someOtherContent;
		sendControlSave.
	
	thirdWindow := self openSheetByName: sheetName.
	self
		assert: self someContent
		equals: (self findCellAt: self someCellIndex in: thirdWindow)
			text asString
		description: 'Unsaved changes should not affect saved sheet'.