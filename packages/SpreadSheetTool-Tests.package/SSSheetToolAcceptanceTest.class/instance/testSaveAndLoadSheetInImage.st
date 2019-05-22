testing
testSaveAndLoadSheetInImage
	"Acceptance test for #14"

	| someIndex newWindow |
	someIndex := (self rowCount * self columnCount) sqrt ceiling.
	
	(self findCellAt: someIndex)
		sendKeys: self someContent;
		sendControlSave.
	self saveSheetAs: sheetName.
	newWindow := self openSheetByName: sheetName.
	
	self
		assert: self someContent
		equals: (self findCellAt: someIndex in: newWindow) text asString.