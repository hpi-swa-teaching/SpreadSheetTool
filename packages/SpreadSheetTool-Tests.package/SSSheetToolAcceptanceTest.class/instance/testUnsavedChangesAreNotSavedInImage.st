testing
testUnsavedChangesAreNotSavedInImage
	"Acceptance test for #14"

	| someIndex firstWindow secondWindow |
	someIndex := (self rowCount * self columnCount) sqrt ceiling.
	
	(self findCellAt: someIndex)
		sendKeys: self someContent;
		sendControlSave.
	self saveSheetAs: sheetName.
	
	firstWindow := self openSheetByName: sheetName.
	(self findCellAt: someIndex in: firstWindow)
		sendKeys: self someOtherContent;
		sendControlSave.
	
	secondWindow := self openSheetByName: sheetName.
	self
		assert: self someContent
		equals: (self findCellAt: someIndex in: secondWindow)
			text asString
		description: 'Unsaved changes should not affect saved sheet'.