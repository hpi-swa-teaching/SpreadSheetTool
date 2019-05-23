testing
testSaveAndLoadSheetInImage
	"Acceptance test for #14"

	| newWindow |
	(self findCellAt: self someCellIndex)
		sendKeys: self someContent;
		sendControlSave.
	self saveSheetAs: sheetName.
	
	newWindow := self openSheetByName: sheetName.
	
	self
		assert: self someContent
		equals: (self findCellAt: self someCellIndex in: newWindow)
			text asString.